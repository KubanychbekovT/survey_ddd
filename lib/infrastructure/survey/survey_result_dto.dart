import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:survey/domain/survey/question.dart';
import 'package:survey/domain/survey/survey.dart';
import 'package:survey/domain/survey/survey_result.dart';
import 'package:survey/domain/survey/value_objects.dart';
import 'package:survey/infrastructure/core/firestore_helpers.dart';

part 'survey_result_dto.freezed.dart';

part 'survey_result_dto.g.dart';

@freezed
abstract class SurveyResultDto implements _$SurveyResultDto {
  SurveyResultDto._();

  factory SurveyResultDto({
    @ServerTimestampConverter() required Timestamp date,
    required List<int> answers,
    @DocumentReferenceConverter() required DocumentReference surveyReference,
    @DocumentReferenceConverter()
        required DocumentReference participantReference,
  }) = _SurveyResultDto;

  factory SurveyResultDto.fromDomain(SurveyResult surveyResult) {
    return SurveyResultDto(
      answers: surveyResult.answers,
      date: Timestamp.fromDate(surveyResult.date),
      participantReference: surveyResult.participantReference,
      surveyReference: surveyResult.surveyReference,
    );
  }



  factory SurveyResultDto.fromJson(Map<String, dynamic> json) =>
      _$SurveyResultDtoFromJson(json);

  SurveyResult toDomain() {
    return SurveyResult(
      answers: answers,
      date: date.toDate(),
      participantReference: participantReference,
      surveyReference: surveyReference,
    );
  }
}

