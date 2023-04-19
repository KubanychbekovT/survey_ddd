// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyDTO _$$_SurveyDTOFromJson(Map<String, dynamic> json) => _$_SurveyDTO(
      name: json['name'] as String,
      date: json['date'] as String,
      surveyQuestions: (json['surveyQuestions'] as List<dynamic>)
          .map((e) => QuestionDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SurveyDTOToJson(_$_SurveyDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'date': instance.date,
      'surveyQuestions': instance.surveyQuestions,
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
