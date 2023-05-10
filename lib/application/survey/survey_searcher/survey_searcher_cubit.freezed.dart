// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_searcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SurveySearcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Survey> surveys) searchSuccess,
    required TResult Function() searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Survey> surveys)? searchSuccess,
    TResult? Function()? searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Survey> surveys)? searchSuccess,
    TResult Function()? searchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailure value) searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailure value)? searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveySearcherStateCopyWith<$Res> {
  factory $SurveySearcherStateCopyWith(
          SurveySearcherState value, $Res Function(SurveySearcherState) then) =
      _$SurveySearcherStateCopyWithImpl<$Res, SurveySearcherState>;
}

/// @nodoc
class _$SurveySearcherStateCopyWithImpl<$Res, $Val extends SurveySearcherState>
    implements $SurveySearcherStateCopyWith<$Res> {
  _$SurveySearcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SurveySearcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SurveySearcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Survey> surveys) searchSuccess,
    required TResult Function() searchFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Survey> surveys)? searchSuccess,
    TResult? Function()? searchFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Survey> surveys)? searchSuccess,
    TResult Function()? searchFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailure value) searchFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailure value)? searchFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SurveySearcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SearchSuccessCopyWith<$Res> {
  factory _$$_SearchSuccessCopyWith(
          _$_SearchSuccess value, $Res Function(_$_SearchSuccess) then) =
      __$$_SearchSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Survey> surveys});
}

/// @nodoc
class __$$_SearchSuccessCopyWithImpl<$Res>
    extends _$SurveySearcherStateCopyWithImpl<$Res, _$_SearchSuccess>
    implements _$$_SearchSuccessCopyWith<$Res> {
  __$$_SearchSuccessCopyWithImpl(
      _$_SearchSuccess _value, $Res Function(_$_SearchSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surveys = null,
  }) {
    return _then(_$_SearchSuccess(
      null == surveys
          ? _value._surveys
          : surveys // ignore: cast_nullable_to_non_nullable
              as List<Survey>,
    ));
  }
}

/// @nodoc

class _$_SearchSuccess implements _SearchSuccess {
  const _$_SearchSuccess(final List<Survey> surveys) : _surveys = surveys;

  final List<Survey> _surveys;
  @override
  List<Survey> get surveys {
    if (_surveys is EqualUnmodifiableListView) return _surveys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_surveys);
  }

  @override
  String toString() {
    return 'SurveySearcherState.searchSuccess(surveys: $surveys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchSuccess &&
            const DeepCollectionEquality().equals(other._surveys, _surveys));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_surveys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchSuccessCopyWith<_$_SearchSuccess> get copyWith =>
      __$$_SearchSuccessCopyWithImpl<_$_SearchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Survey> surveys) searchSuccess,
    required TResult Function() searchFailure,
  }) {
    return searchSuccess(surveys);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Survey> surveys)? searchSuccess,
    TResult? Function()? searchFailure,
  }) {
    return searchSuccess?.call(surveys);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Survey> surveys)? searchSuccess,
    TResult Function()? searchFailure,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(surveys);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailure value) searchFailure,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailure value)? searchFailure,
  }) {
    return searchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchSuccess implements SurveySearcherState {
  const factory _SearchSuccess(final List<Survey> surveys) = _$_SearchSuccess;

  List<Survey> get surveys;
  @JsonKey(ignore: true)
  _$$_SearchSuccessCopyWith<_$_SearchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchFailureCopyWith<$Res> {
  factory _$$_SearchFailureCopyWith(
          _$_SearchFailure value, $Res Function(_$_SearchFailure) then) =
      __$$_SearchFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchFailureCopyWithImpl<$Res>
    extends _$SurveySearcherStateCopyWithImpl<$Res, _$_SearchFailure>
    implements _$$_SearchFailureCopyWith<$Res> {
  __$$_SearchFailureCopyWithImpl(
      _$_SearchFailure _value, $Res Function(_$_SearchFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchFailure implements _SearchFailure {
  const _$_SearchFailure();

  @override
  String toString() {
    return 'SurveySearcherState.searchFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Survey> surveys) searchSuccess,
    required TResult Function() searchFailure,
  }) {
    return searchFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Survey> surveys)? searchSuccess,
    TResult? Function()? searchFailure,
  }) {
    return searchFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Survey> surveys)? searchSuccess,
    TResult Function()? searchFailure,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailure value) searchFailure,
  }) {
    return searchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SearchSuccess value)? searchSuccess,
    TResult? Function(_SearchFailure value)? searchFailure,
  }) {
    return searchFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure(this);
    }
    return orElse();
  }
}

abstract class _SearchFailure implements SurveySearcherState {
  const factory _SearchFailure() = _$_SearchFailure;
}
