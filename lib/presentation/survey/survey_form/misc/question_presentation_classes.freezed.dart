// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionPrimitive {
  String get name => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionPrimitiveCopyWith<QuestionPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionPrimitiveCopyWith<$Res> {
  factory $QuestionPrimitiveCopyWith(
          QuestionPrimitive value, $Res Function(QuestionPrimitive) then) =
      _$QuestionPrimitiveCopyWithImpl<$Res, QuestionPrimitive>;
  @useResult
  $Res call({String name, List<String> options});
}

/// @nodoc
class _$QuestionPrimitiveCopyWithImpl<$Res, $Val extends QuestionPrimitive>
    implements $QuestionPrimitiveCopyWith<$Res> {
  _$QuestionPrimitiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionPrimitiveCopyWith<$Res>
    implements $QuestionPrimitiveCopyWith<$Res> {
  factory _$$_QuestionPrimitiveCopyWith(_$_QuestionPrimitive value,
          $Res Function(_$_QuestionPrimitive) then) =
      __$$_QuestionPrimitiveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> options});
}

/// @nodoc
class __$$_QuestionPrimitiveCopyWithImpl<$Res>
    extends _$QuestionPrimitiveCopyWithImpl<$Res, _$_QuestionPrimitive>
    implements _$$_QuestionPrimitiveCopyWith<$Res> {
  __$$_QuestionPrimitiveCopyWithImpl(
      _$_QuestionPrimitive _value, $Res Function(_$_QuestionPrimitive) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? options = null,
  }) {
    return _then(_$_QuestionPrimitive(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_QuestionPrimitive extends _QuestionPrimitive {
  const _$_QuestionPrimitive(
      {required this.name, required final List<String> options})
      : _options = options,
        super._();

  @override
  final String name;
  final List<String> _options;
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'QuestionPrimitive(name: $name, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionPrimitive &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionPrimitiveCopyWith<_$_QuestionPrimitive> get copyWith =>
      __$$_QuestionPrimitiveCopyWithImpl<_$_QuestionPrimitive>(
          this, _$identity);
}

abstract class _QuestionPrimitive extends QuestionPrimitive {
  const factory _QuestionPrimitive(
      {required final String name,
      required final List<String> options}) = _$_QuestionPrimitive;
  const _QuestionPrimitive._() : super._();

  @override
  String get name;
  @override
  List<String> get options;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionPrimitiveCopyWith<_$_QuestionPrimitive> get copyWith =>
      throw _privateConstructorUsedError;
}
