import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:survey/infrastructure/core/firestore_helpers.dart';

part 'survey_result.freezed.dart';

@freezed
abstract class SurveyResult with _$SurveyResult {
  const factory SurveyResult({
    required DocumentReference surveyReference,
    required DocumentReference participantReference,
    required DateTime date,
    required List<int> answers,
  }) = _SurveyResult;

  factory SurveyResult.empty() => SurveyResult(
        surveyReference: FirebaseFirestore.instance.dummyRef,
        participantReference: FirebaseFirestore.instance.dummyRef,
        date: DateTime.now(),
        answers: [],
      );
}
