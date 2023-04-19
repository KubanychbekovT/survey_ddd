import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:survey/domain/auth/i_auth_facade.dart';
import 'package:survey/domain/core/errors.dart';
import 'package:survey/domain/survey/i_survey_repository.dart';
import 'package:survey/domain/survey/survey.dart';
import 'package:survey/domain/survey/survey_failure.dart';
import 'package:survey/infrastructure/core/firestore_helpers.dart';
import 'survey_dto.dart';

@LazySingleton(as: ISurveyRepository)
class SurveyRepository implements ISurveyRepository {
  final FirebaseFirestore firebaseFirestore;
  final IAuthFacade _authFacade;
  SurveyRepository(this.firebaseFirestore, this._authFacade,);

  @override
  Stream<Either<FirebaseFirestoreFailure, List<Survey>>> watchAllSurveys() async* {

    final userOption =  _authFacade.getSignedInUserId();
    final userId =
        "users/${userOption.getOrElse(() => throw NotAuthenticatedError())}";
    Stream<Either<FirebaseFirestoreFailure, List<SurveyDto>>> dtoStream =
    firebaseFirestore.projectCollection
        .where("members",
        arrayContains: firebaseFirestore.doc(userId))
        .snapshots()
        .map((projects) => right<FirebaseFirestoreFailure, List<SurveyDto>>(
        surveys.docs.map((survey) {
          return SurveyDto.fromFirestore(survey);
        }).toList()));
    await for (final dtoProject in dtoStream) {
      final a=await Future.wait((await Future.wait(dtoProject
          .getOrElse(() => [])
          .map((projectDto) async => await toDomain(projectDto))))
          .map((project) => getRightsProject(project, userId))
          .map((project) => project.copyWith(
          tasks: project.tasks
              .map((task) => task.copyWith(
              canBeModifiedAndIsAdmin: project.canBeModifiedAndIsAdmin,
              canChangeDoneStatus:
              setCanChangeDoneStatus(task, project, userId)))
              .toList())
      )
          .map((project)  async => project.copyWith(messages: await getUsersForMessages(project.copyWith(messages: setMessagesInColumn(project)))))
          .toList());
      yield right(a);
    }
  }


  Future<Survey> toDomain(SurveyDto surveyDto) async {
    List<User> memberList = await getUsersFromReference(surveyDto.members);
    User owner = (await getUsersFromReference(surveyDto.members)).first;
    final project = surveyDto.toDomain(owner, memberList);
    return project;
  }

  Future<List<User>> getUsersFromReference(
      List<DocumentReference> userReferences) async {
    return Future.wait(userReferences.map((userRef) async {
      final user = UserDto.fromFirestore((await userRef.get())).toDomain();
      return user;
    }).toList());
  }


  Survey getRightsProject(Survey survey, String userId) {
    return survey.copyWith(
        canBeModifiedAndIsAdmin: (survey.members
            .where((member) => member.reference.path.contains(userId))
            .isNotEmpty)
            ? (survey.owner.reference.path.contains(userId)
            ? some(true)
            : some(false))
            : none());
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> createSurvey(Survey survey,{String? documentId}) async {
    try {
      final userOption = _authFacade.getSignedInUserId();
      final userId = userOption
          .getOrElse(() => throw NotAuthenticatedError())
      ;
      survey = survey.copyWith(
          owner: User.empty(firebaseFirestore: firebaseFirestore)
              .copyWith(reference: firebaseFirestore.doc("users/$userId")));
      survey = survey.copyWith(members: [
        User.empty(firebaseFirestore: firebaseFirestore)
            .copyWith(reference: firebaseFirestore.doc("users/$userId"))
      ]);
      final projectDto=SurveyDto.fromDomain(survey).copyWith(reference: null).toJson();
      if(documentId==null){
        await firebaseFirestore.projectCollection.add(projectDto);
      }else{
        await firebaseFirestore.projectCollection.doc(documentId).set(projectDto);
      }

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> deleteSurvey(Survey survey) async {
    try {
      await survey.reference.delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const FirebaseFirestoreFailure.unableToUpdate());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> updateSurvey(Survey survey) async {
    try {
      await survey.reference.update({
        'name': survey.name.getOrCrash(), // John Doe
      });
      return right(unit);
    } on FirebaseException catch (e) {
      print(e.message);
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const FirebaseFirestoreFailure.unableToUpdate());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }



}