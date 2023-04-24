// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Survey {
  SurveyName get name => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  SurveyQuestions get surveyQuestions => throw _privateConstructorUsedError;
  DocumentReference<Object?> get reference =>
      throw _privateConstructorUsedError;
  DocumentReference<Object?> get owner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurveyCopyWith<Survey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyCopyWith<$Res> {
  factory $SurveyCopyWith(Survey value, $Res Function(Survey) then) =
      _$SurveyCopyWithImpl<$Res, Survey>;
  @useResult
  $Res call(
      {SurveyName name,
      DateTime date,
      SurveyQuestions surveyQuestions,
      DocumentReference<Object?> reference,
      DocumentReference<Object?> owner});
}

/// @nodoc
class _$SurveyCopyWithImpl<$Res, $Val extends Survey>
    implements $SurveyCopyWith<$Res> {
  _$SurveyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
    Object? surveyQuestions = null,
    Object? reference = null,
    Object? owner = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as SurveyName,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      surveyQuestions: null == surveyQuestions
          ? _value.surveyQuestions
          : surveyQuestions // ignore: cast_nullable_to_non_nullable
              as SurveyQuestions,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SurveyCopyWith<$Res> implements $SurveyCopyWith<$Res> {
  factory _$$_SurveyCopyWith(_$_Survey value, $Res Function(_$_Survey) then) =
      __$$_SurveyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SurveyName name,
      DateTime date,
      SurveyQuestions surveyQuestions,
      DocumentReference<Object?> reference,
      DocumentReference<Object?> owner});
}

/// @nodoc
class __$$_SurveyCopyWithImpl<$Res>
    extends _$SurveyCopyWithImpl<$Res, _$_Survey>
    implements _$$_SurveyCopyWith<$Res> {
  __$$_SurveyCopyWithImpl(_$_Survey _value, $Res Function(_$_Survey) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
    Object? surveyQuestions = null,
    Object? reference = null,
    Object? owner = null,
  }) {
    return _then(_$_Survey(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as SurveyName,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      surveyQuestions: null == surveyQuestions
          ? _value.surveyQuestions
          : surveyQuestions // ignore: cast_nullable_to_non_nullable
              as SurveyQuestions,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ));
  }
}

/// @nodoc

class _$_Survey extends _Survey {
  const _$_Survey(
      {required this.name,
      required this.date,
      required this.surveyQuestions,
      required this.reference,
      required this.owner})
      : super._();

  @override
  final SurveyName name;
  @override
  final DateTime date;
  @override
  final SurveyQuestions surveyQuestions;
  @override
  final DocumentReference<Object?> reference;
  @override
  final DocumentReference<Object?> owner;

  @override
  String toString() {
    return 'Survey(name: $name, date: $date, surveyQuestions: $surveyQuestions, reference: $reference, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Survey &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.surveyQuestions, surveyQuestions) ||
                other.surveyQuestions == surveyQuestions) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, date, surveyQuestions, reference, owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurveyCopyWith<_$_Survey> get copyWith =>
      __$$_SurveyCopyWithImpl<_$_Survey>(this, _$identity);
}

abstract class _Survey extends Survey {
  const factory _Survey(
      {required final SurveyName name,
      required final DateTime date,
      required final SurveyQuestions surveyQuestions,
      required final DocumentReference<Object?> reference,
      required final DocumentReference<Object?> owner}) = _$_Survey;
  const _Survey._() : super._();

  @override
  SurveyName get name;
  @override
  DateTime get date;
  @override
  SurveyQuestions get surveyQuestions;
  @override
  DocumentReference<Object?> get reference;
  @override
  DocumentReference<Object?> get owner;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyCopyWith<_$_Survey> get copyWith =>
      throw _privateConstructorUsedError;
}
