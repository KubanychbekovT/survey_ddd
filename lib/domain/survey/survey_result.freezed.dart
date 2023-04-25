// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SurveyResult {
  DocumentReference<Object?> get surveyReference =>
      throw _privateConstructorUsedError;
  DocumentReference<Object?> get participantReference =>
      throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  List<int> get answers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurveyResultCopyWith<SurveyResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyResultCopyWith<$Res> {
  factory $SurveyResultCopyWith(
          SurveyResult value, $Res Function(SurveyResult) then) =
      _$SurveyResultCopyWithImpl<$Res, SurveyResult>;
  @useResult
  $Res call(
      {DocumentReference<Object?> surveyReference,
      DocumentReference<Object?> participantReference,
      DateTime date,
      List<int> answers});
}

/// @nodoc
class _$SurveyResultCopyWithImpl<$Res, $Val extends SurveyResult>
    implements $SurveyResultCopyWith<$Res> {
  _$SurveyResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surveyReference = null,
    Object? participantReference = null,
    Object? date = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      surveyReference: null == surveyReference
          ? _value.surveyReference
          : surveyReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      participantReference: null == participantReference
          ? _value.participantReference
          : participantReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SurveyResultCopyWith<$Res>
    implements $SurveyResultCopyWith<$Res> {
  factory _$$_SurveyResultCopyWith(
          _$_SurveyResult value, $Res Function(_$_SurveyResult) then) =
      __$$_SurveyResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DocumentReference<Object?> surveyReference,
      DocumentReference<Object?> participantReference,
      DateTime date,
      List<int> answers});
}

/// @nodoc
class __$$_SurveyResultCopyWithImpl<$Res>
    extends _$SurveyResultCopyWithImpl<$Res, _$_SurveyResult>
    implements _$$_SurveyResultCopyWith<$Res> {
  __$$_SurveyResultCopyWithImpl(
      _$_SurveyResult _value, $Res Function(_$_SurveyResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surveyReference = null,
    Object? participantReference = null,
    Object? date = null,
    Object? answers = null,
  }) {
    return _then(_$_SurveyResult(
      surveyReference: null == surveyReference
          ? _value.surveyReference
          : surveyReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      participantReference: null == participantReference
          ? _value.participantReference
          : participantReference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_SurveyResult implements _SurveyResult {
  const _$_SurveyResult(
      {required this.surveyReference,
      required this.participantReference,
      required this.date,
      required final List<int> answers})
      : _answers = answers;

  @override
  final DocumentReference<Object?> surveyReference;
  @override
  final DocumentReference<Object?> participantReference;
  @override
  final DateTime date;
  final List<int> _answers;
  @override
  List<int> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'SurveyResult(surveyReference: $surveyReference, participantReference: $participantReference, date: $date, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyResult &&
            (identical(other.surveyReference, surveyReference) ||
                other.surveyReference == surveyReference) &&
            (identical(other.participantReference, participantReference) ||
                other.participantReference == participantReference) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      surveyReference,
      participantReference,
      date,
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurveyResultCopyWith<_$_SurveyResult> get copyWith =>
      __$$_SurveyResultCopyWithImpl<_$_SurveyResult>(this, _$identity);
}

abstract class _SurveyResult implements SurveyResult {
  const factory _SurveyResult(
      {required final DocumentReference<Object?> surveyReference,
      required final DocumentReference<Object?> participantReference,
      required final DateTime date,
      required final List<int> answers}) = _$_SurveyResult;

  @override
  DocumentReference<Object?> get surveyReference;
  @override
  DocumentReference<Object?> get participantReference;
  @override
  DateTime get date;
  @override
  List<int> get answers;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyResultCopyWith<_$_SurveyResult> get copyWith =>
      throw _privateConstructorUsedError;
}
