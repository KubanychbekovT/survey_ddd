// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyResultDto _$$_SurveyResultDtoFromJson(Map<String, dynamic> json) =>
    _$_SurveyResultDto(
      date:
          const ServerTimestampConverter().fromJson(json['date'] as Timestamp),
      answers: (json['answers'] as List<dynamic>).map((e) => e as int).toList(),
      surveyReference: const DocumentReferenceConverter()
          .fromJson(json['surveyReference'] as DocumentReference<Object?>),
      participantReference: const DocumentReferenceConverter()
          .fromJson(json['participantReference'] as DocumentReference<Object?>),
    );

Map<String, dynamic> _$$_SurveyResultDtoToJson(_$_SurveyResultDto instance) =>
    <String, dynamic>{
      'date': const ServerTimestampConverter().toJson(instance.date),
      'answers': instance.answers,
      'surveyReference':
          const DocumentReferenceConverter().toJson(instance.surveyReference),
      'participantReference': const DocumentReferenceConverter()
          .toJson(instance.participantReference),
    };
