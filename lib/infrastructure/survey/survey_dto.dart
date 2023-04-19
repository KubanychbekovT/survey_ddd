import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:survey/domain/survey/question.dart';
import 'package:survey/domain/survey/survey.dart';

part 'survey_dto.freezed.dart';
part 'survey_dto.g.dart';

@freezed
abstract class SurveyDto implements _$SurveyDto {
  SurveyDto._();

  const factory SurveyDTO({
    required String name,
    required String date,
    required List<QuestionDTO> surveyQuestions,
  }) = _SurveyDTO;

  factory SurveyDTO.fromDomain(Survey survey) {
    return SurveyDTO(
      name: survey.name.getOrCrash(),
      date: survey.date.toIso8601String(),
      surveyQuestions: survey.surveyQuestions.getOrCrash()
          .map((question) => QuestionDTO.fromDomain(question)).toList(),
    );
  }

  factory SurveyDTO.fromJson(Map<String, dynamic> json) =>
      _$SurveyDTOFromJson(json);
}
@freezed
class QuestionDTO with _$QuestionDTO {
  const factory QuestionDTO({
    required String name,
    required List<String> options,
  }) = _QuestionDTO;

  factory QuestionDTO.fromDomain(Question question) {
    return QuestionDTO(
      name: question.name.getOrCrash(),
      options: question.options.getOrCrash().map((option) => option.getOrCrash()).toList(),
    );
  }

  factory QuestionDTO.fromJson(Map<String, dynamic> json) =>
      _$QuestionDTOFromJson(json);
}