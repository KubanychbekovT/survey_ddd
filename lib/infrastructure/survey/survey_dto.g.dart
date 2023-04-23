// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyDTO _$$_SurveyDTOFromJson(Map<String, dynamic> json) => _$_SurveyDTO(
      name: json['name'] as String,
      date:
          const ServerTimestampConverter().fromJson(json['date'] as Timestamp),
      surveyQuestions: (json['surveyQuestions'] as List<dynamic>)
          .map((e) =>
              const QuestionDtoConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
      owner: const DocumentReferenceConverter()
          .fromJson(json['owner'] as DocumentReference<Object?>),
    );

Map<String, dynamic> _$$_SurveyDTOToJson(_$_SurveyDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date': const ServerTimestampConverter().toJson(instance.date),
      'surveyQuestions': instance.surveyQuestions
          .map(const QuestionDtoConverter().toJson)
          .toList(),
      'owner': const DocumentReferenceConverter().toJson(instance.owner),
    };

_$_QuestionDTO _$$_QuestionDTOFromJson(Map<String, dynamic> json) =>
    _$_QuestionDTO(
      name: json['name'] as String,
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_QuestionDTOToJson(_$_QuestionDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'options': instance.options,
    };
