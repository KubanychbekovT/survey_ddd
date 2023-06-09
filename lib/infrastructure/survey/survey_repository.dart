import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import 'package:survey/domain/auth/i_auth_facade.dart';
import 'package:survey/domain/core/errors.dart';
import 'package:survey/domain/survey/i_survey_repository.dart';
import 'package:survey/domain/survey/survey.dart';
import 'package:survey/domain/survey/survey_failure.dart';
import 'package:survey/domain/survey/survey_result.dart';
import 'package:survey/domain/users/user.dart';
import 'package:survey/infrastructure/core/firestore_helpers.dart';
import 'package:survey/infrastructure/survey/survey_result_dto.dart';
import 'survey_dto.dart';

@LazySingleton(as: ISurveyRepository)
class SurveyRepository implements ISurveyRepository {
  final FirebaseFirestore firebaseFirestore;
  final IAuthFacade _authFacade;

  SurveyRepository(this.firebaseFirestore,
      this._authFacade,);

  @override
  Stream<Either<FirebaseFirestoreFailure, List<Survey>>>
  watchAllSurveys() async* {
    Stream<Either<FirebaseFirestoreFailure, List<SurveyDto>>> dtoStream =
    firebaseFirestore.surveyCollection.snapshots().map((surveys) =>
        right<FirebaseFirestoreFailure, List<SurveyDto>>(
            surveys.docs.map((survey) {
              return SurveyDto.fromFirestore(survey);
            }).toList()));
    await for (final dtoSurvey in dtoStream) {
      final a = dtoSurvey
          .getOrElse(() => [])
          .map((surveyDto) => surveyDto.toDomain())
          .toList();
      yield right(a);
    }
  }

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> createSurvey(Survey survey,
      {String? documentId}) async {
    try {
      final userOption = _authFacade.getSignedInUserId();
      final userId = userOption.getOrElse(() => throw NotAuthenticatedError());
      survey = survey.copyWith(
          owner: FirebaseFirestore.instance.userCollection.doc(userId));
      final projectDto =
      SurveyDto.fromDomain(survey).copyWith(reference: null).toJson();
      await firebaseFirestore.surveyCollection.add(projectDto);
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
  Future<Either<FirebaseFirestoreFailure, Unit>> deleteSurvey(
      Survey survey) async {
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
  Future<Either<FirebaseFirestoreFailure, Unit>> updateSurvey(
      Survey survey) async {
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

  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> addSurveyResponse(
      Survey survey, Map<String, dynamic> response) async {
    try {
      await survey.reference.collection('responses').add(response);
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
  Future<Either<FirebaseFirestoreFailure,
      Map<String, dynamic>>> getSurveyResponses(Survey survey) async {
    try {
      final querySnapshot = await survey.reference.collection('responses')
          .get();
      final responses = querySnapshot.docs.fold<Map<String, dynamic>>(
        {},
            (map, doc) => map..[doc.id] = doc.data(),
      );
      return right(responses);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }


  @override
  Future<Either<FirebaseFirestoreFailure, List<Survey>>> getUserSurveys(
      DocumentReference<Object?> userDocumentRef) async {
    try {
      final userOption = _authFacade.getSignedInUserId();
      final userId = "users/${userOption
          .getOrElse(() => throw NotAuthenticatedError())}";
      final data = (await firebaseFirestore
          .surveyCollection
          .where("owner", isEqualTo: firebaseFirestore.doc(userId))
          .get());

      List<Survey> surveys = (await Future.wait(
        data.docs.map((survey) async {
          return SurveyDto.fromFirestore(survey).toDomain();
        }),
      )).toList();
      return right(surveys);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }


  @override
  Future<Either<FirebaseFirestoreFailure, Unit>> addSurveyResult(
      SurveyResult surveyResult) async {
    try {
      final userOption = _authFacade.getSignedInUserId();
      final userId = userOption.getOrElse(() => throw NotAuthenticatedError());
      surveyResult = surveyResult.copyWith(
          participantReference:
          FirebaseFirestore.instance.userCollection.doc(userId));
      final surveyDto =
      SurveyResultDto.fromDomain(surveyResult).copyWith().toJson();
      await firebaseFirestore.surveyResultCollection.add(surveyDto);
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
  Future<Either<FirebaseFirestoreFailure, List<SurveyResult>>> watchAllSurveyResults(String surveyId) async {
    try {
      final surveyReference = firebaseFirestore.collection('surveys').doc(surveyId);
      final querySnapshot = await surveyReference.collection('results').get();
      final surveyResultDtoList = querySnapshot.docs
          .map((doc) => SurveyResultDto.fromFirestore(doc))
          .toList();
      final surveyResultList = surveyResultDtoList.map((dto) => dto.toDomain()).toList();
      return right(surveyResultList);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const FirebaseFirestoreFailure.insufficientPermission());
      } else {
        return left(const FirebaseFirestoreFailure.unexpected());
      }
    }
  }

}