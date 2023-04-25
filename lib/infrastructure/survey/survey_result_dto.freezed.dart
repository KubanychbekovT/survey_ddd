// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyResultDto _$SurveyResultDtoFromJson(Map<String, dynamic> json) {
  return _SurveyResultDto.fromJson(json);
}

/// @nodoc
mixin _$SurveyResultDto {
  @ServerTimestampConverter()
  Timestamp get date => throw _privateConstructorUsedError;
  List<int> get answers => throw _privateConstructorUsedError;
  @DocumentReferenceConverter()
  DocumentReference<Object?> get surveyReference =>
      throw _privateConstructorUsedError;
  @DocumentReferenceConverter()
  DocumentReference<Object?> get participantReference =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyResultDtoCopyWith<SurveyResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyResultDtoCopyWith<$Res> {
  factory $SurveyResultDtoCopyWith(
          SurveyResultDto value, $Res Function(SurveyResultDto) then) =
      _$SurveyResultDtoCopyWithImpl<$Res, SurveyResultDto>;
  @useResult
  $Res call(
      {@ServerTimestampConverter()
          Timestamp date,
      List<int> answers,
      @DocumentReferenceConverter()
          DocumentReference<Object?> surveyReference,
      @DocumentReferenceConverter()
          DocumentReference<Object?> participantReference});
}

/// @nodoc
class _$SurveyResultDtoCopyWithImpl<$Res, $Val extends SurveyResultDto>
    implements $SurveyResultDtoCopyWith<$Res> {
  _$SurveyResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? answers = null,
    Object? surveyReference = null,
    Object? participantReference = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      surveyReference: null == surveyReference
          ? _value.surveyReference
          : surveyReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      participantReference: null == participantReference
          ? _value.participantReference
          : participantReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SurveyResultDtoCopyWith<$Res>
    implements $SurveyResultDtoCopyWith<$Res> {
  factory _$$_SurveyResultDtoCopyWith(
          _$_SurveyResultDto value, $Res Function(_$_SurveyResultDto) then) =
      __$$_SurveyResultDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@ServerTimestampConverter()
          Timestamp date,
      List<int> answers,
      @DocumentReferenceConverter()
          DocumentReference<Object?> surveyReference,
      @DocumentReferenceConverter()
          DocumentReference<Object?> participantReference});
}

/// @nodoc
class __$$_SurveyResultDtoCopyWithImpl<$Res>
    extends _$SurveyResultDtoCopyWithImpl<$Res, _$_SurveyResultDto>
    implements _$$_SurveyResultDtoCopyWith<$Res> {
  __$$_SurveyResultDtoCopyWithImpl(
      _$_SurveyResultDto _value, $Res Function(_$_SurveyResultDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? answers = null,
    Object? surveyReference = null,
    Object? participantReference = null,
  }) {
    return _then(_$_SurveyResultDto(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      surveyReference: null == surveyReference
          ? _value.surveyReference
          : surveyReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      participantReference: null == participantReference
          ? _value.participantReference
          : participantReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyResultDto extends _SurveyResultDto {
  _$_SurveyResultDto(
      {@ServerTimestampConverter() required this.date,
      required final List<int> answers,
      @DocumentReferenceConverter() required this.surveyReference,
      @DocumentReferenceConverter() required this.participantReference})
      : _answers = answers,
        super._();

  factory _$_SurveyResultDto.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyResultDtoFromJson(json);

  @override
  @ServerTimestampConverter()
  final Timestamp date;
  final List<int> _answers;
  @override
  List<int> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  @DocumentReferenceConverter()
  final DocumentReference<Object?> surveyReference;
  @override
  @DocumentReferenceConverter()
  final DocumentReference<Object?> participantReference;

  @override
  String toString() {
    return 'SurveyResultDto(date: $date, answers: $answers, surveyReference: $surveyReference, participantReference: $participantReference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyResultDto &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.surveyReference, surveyReference) ||
                other.surveyReference == surveyReference) &&
            (identical(other.participantReference, participantReference) ||
                other.participantReference == participantReference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      const DeepCollectionEquality().hash(_answers),
      surveyReference,
      participantReference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurveyResultDtoCopyWith<_$_SurveyResultDto> get copyWith =>
      __$$_SurveyResultDtoCopyWithImpl<_$_SurveyResultDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyResultDtoToJson(
      this,
    );
  }
}

abstract class _SurveyResultDto extends SurveyResultDto {
  factory _SurveyResultDto(
          {@ServerTimestampConverter()
              required final Timestamp date,
          required final List<int> answers,
          @DocumentReferenceConverter()
              required final DocumentReference<Object?> surveyReference,
          @DocumentReferenceConverter()
              required final DocumentReference<Object?> participantReference}) =
      _$_SurveyResultDto;
  _SurveyResultDto._() : super._();

  factory _SurveyResultDto.fromJson(Map<String, dynamic> json) =
      _$_SurveyResultDto.fromJson;

  @override
  @ServerTimestampConverter()
  Timestamp get date;
  @override
  List<int> get answers;
  @override
  @DocumentReferenceConverter()
  DocumentReference<Object?> get surveyReference;
  @override
  @DocumentReferenceConverter()
  DocumentReference<Object?> get participantReference;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyResultDtoCopyWith<_$_SurveyResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}
