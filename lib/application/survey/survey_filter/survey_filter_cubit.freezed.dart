// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_filter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SurveyFilterState {
  SurveyFilterType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurveyFilterStateCopyWith<SurveyFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyFilterStateCopyWith<$Res> {
  factory $SurveyFilterStateCopyWith(
          SurveyFilterState value, $Res Function(SurveyFilterState) then) =
      _$SurveyFilterStateCopyWithImpl<$Res, SurveyFilterState>;
  @useResult
  $Res call({SurveyFilterType type});
}

/// @nodoc
class _$SurveyFilterStateCopyWithImpl<$Res, $Val extends SurveyFilterState>
    implements $SurveyFilterStateCopyWith<$Res> {
  _$SurveyFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SurveyFilterType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectFilterStateCopyWith<$Res>
    implements $SurveyFilterStateCopyWith<$Res> {
  factory _$$_ProjectFilterStateCopyWith(_$_ProjectFilterState value,
          $Res Function(_$_ProjectFilterState) then) =
      __$$_ProjectFilterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SurveyFilterType type});
}

/// @nodoc
class __$$_ProjectFilterStateCopyWithImpl<$Res>
    extends _$SurveyFilterStateCopyWithImpl<$Res, _$_ProjectFilterState>
    implements _$$_ProjectFilterStateCopyWith<$Res> {
  __$$_ProjectFilterStateCopyWithImpl(
      _$_ProjectFilterState _value, $Res Function(_$_ProjectFilterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_ProjectFilterState(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SurveyFilterType,
    ));
  }
}

/// @nodoc

class _$_ProjectFilterState implements _ProjectFilterState {
  _$_ProjectFilterState(this.type);

  @override
  final SurveyFilterType type;

  @override
  String toString() {
    return 'SurveyFilterState(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectFilterState &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectFilterStateCopyWith<_$_ProjectFilterState> get copyWith =>
      __$$_ProjectFilterStateCopyWithImpl<_$_ProjectFilterState>(
          this, _$identity);
}

abstract class _ProjectFilterState implements SurveyFilterState {
  factory _ProjectFilterState(final SurveyFilterType type) =
      _$_ProjectFilterState;

  @override
  SurveyFilterType get type;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectFilterStateCopyWith<_$_ProjectFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}
