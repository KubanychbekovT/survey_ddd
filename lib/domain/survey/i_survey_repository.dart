import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:survey/domain/survey/survey.dart';
import 'package:survey/domain/survey/survey_failure.dart';
import 'package:survey/domain/users/user.dart';

abstract class ISurveyRepository {
  Stream<Either<FirebaseFirestoreFailure, List<Survey>>> watchAllSurveys();
  Future<Either<FirebaseFirestoreFailure, List<Survey>>> getUserSurveys(User user);
  Future<Either<FirebaseFirestoreFailure, Unit>> createSurvey(Survey survey, {String? documentId});
  Future<Either<FirebaseFirestoreFailure, Unit>> updateSurvey(Survey survey);
  Future<Either<FirebaseFirestoreFailure, Unit>> deleteSurvey(Survey survey);
  Future<Either<FirebaseFirestoreFailure, Unit>> addSurveyResponse(Survey survey, Map<String, dynamic> response);
  Future<Either<FirebaseFirestoreFailure, Map<String, dynamic>>> getSurveyResponses(Survey survey);
}
