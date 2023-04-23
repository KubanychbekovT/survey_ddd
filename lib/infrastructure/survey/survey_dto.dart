import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:survey/domain/survey/question.dart';
import 'package:survey/domain/survey/survey.dart';
import 'package:survey/domain/survey/value_objects.dart';
import 'package:survey/infrastructure/core/firestore_helpers.dart';

part 'survey_dto.freezed.dart';

part 'survey_dto.g.dart';

@freezed
abstract class SurveyDto implements _$SurveyDto {
  SurveyDto._();

  factory SurveyDto({
    required String name,
    @ServerTimestampConverter() required Timestamp date,
    @QuestionDtoConverter()
    required List<QuestionDTO> surveyQuestions,
    @DocumentReferenceConverter() required DocumentReference owner,
    @DocumentReferenceConverter()
    @JsonKey(ignore: true)
        DocumentReference? reference,
  }) = _SurveyDTO;

  factory SurveyDto.fromDomain(Survey survey) {
    return SurveyDto(
      name: survey.name.getOrCrash(),
      date: Timestamp.fromDate(survey.date),
      surveyQuestions: survey.surveyQuestions
          .getOrCrash()
          .map((question) => QuestionDTO.fromDomain(question))
          .toList(),
      owner: survey.owner,
    );
  }

  factory SurveyDto.fromFirestore(QueryDocumentSnapshot doc) {
    return SurveyDto.fromJson(doc.data()! as Map<String, dynamic>).copyWith(
      reference: doc.reference,
    );
  }

  factory SurveyDto.fromJson(Map<String, dynamic> json) =>
      _$SurveyDtoFromJson(json);
  Survey toDomain() {
    return Survey(
      name: SurveyName(name),
      surveyQuestions: SurveyQuestions(surveyQuestions
          .map((surveyQuestionDto) => surveyQuestionDto.toDomain())
          .toList()),
      owner: owner,
      reference: reference!,
      date: date.toDate(),
    );
  }
}

@freezed
abstract class QuestionDTO implements _$QuestionDTO {
  QuestionDTO._();

  factory QuestionDTO({
    required String name,
    required List<String> options,
  }) = _QuestionDTO;

  factory QuestionDTO.fromDomain(Question question) {
    return QuestionDTO(
      name: question.name.getOrCrash(),
      options: question.options
          .getOrCrash()
          .map((option) => option.getOrCrash())
          .toList(),
    );
  }

  Question toDomain() {
    return Question(
      name: QuestionName(name),
      options: QuestionOptions(
          options.map((optionDto) => QuestionOptionName(optionDto)).toList()),
    );
  }

  factory QuestionDTO.fromJson(Map<String, dynamic> json) =>
      _$QuestionDTOFromJson(json);
}
