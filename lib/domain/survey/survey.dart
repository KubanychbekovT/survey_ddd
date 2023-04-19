import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:survey/domain/survey/question.dart';
import 'package:survey/domain/survey/value_objects.dart';
import 'package:survey/infrastructure/core/firestore_helpers.dart';

part 'survey.freezed.dart';

@freezed
class Survey with _$Survey {
  const factory Survey({
    required SurveyName name,
    required DateTime date,
    required SurveyQuestions surveyQuestions,
    required DocumentReference reference,
  }) = _Survey;
  factory Survey.empty() {
    final dummyRef=FirebaseFirestore.instance.dummyRef;
    return Survey(
        name: SurveyName(""),
        date: DateTime.now(),
      surveyQuestions: SurveyQuestions(const []),
        reference: dummyRef,
    );
  }
}
