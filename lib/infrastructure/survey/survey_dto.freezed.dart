// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyDto _$SurveyDtoFromJson(Map<String, dynamic> json) {
  return _SurveyDTO.fromJson(json);
}

/// @nodoc
mixin _$SurveyDto {
  String get name => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  Timestamp get date => throw _privateConstructorUsedError;
  @QuestionDtoConverter()
  List<QuestionDTO> get surveyQuestions => throw _privateConstructorUsedError;
  @DocumentReferenceConverter()
  DocumentReference<Object?> get owner => throw _privateConstructorUsedError;
  @DocumentReferenceConverter()
  @JsonKey(ignore: true)
  DocumentReference<Object?>? get reference =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyDtoCopyWith<SurveyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyDtoCopyWith<$Res> {
  factory $SurveyDtoCopyWith(SurveyDto value, $Res Function(SurveyDto) then) =
      _$SurveyDtoCopyWithImpl<$Res, SurveyDto>;
  @useResult
  $Res call(
      {String name,
      @ServerTimestampConverter()
          Timestamp date,
      @QuestionDtoConverter()
          List<QuestionDTO> surveyQuestions,
      @DocumentReferenceConverter()
          DocumentReference<Object?> owner,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          DocumentReference<Object?>? reference});
}

/// @nodoc
class _$SurveyDtoCopyWithImpl<$Res, $Val extends SurveyDto>
    implements $SurveyDtoCopyWith<$Res> {
  _$SurveyDtoCopyWithImpl(this._value, this._then);

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
    Object? owner = null,
    Object? reference = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      surveyQuestions: null == surveyQuestions
          ? _value.surveyQuestions
          : surveyQuestions // ignore: cast_nullable_to_non_nullable
              as List<QuestionDTO>,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SurveyDTOCopyWith<$Res> implements $SurveyDtoCopyWith<$Res> {
  factory _$$_SurveyDTOCopyWith(
          _$_SurveyDTO value, $Res Function(_$_SurveyDTO) then) =
      __$$_SurveyDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @ServerTimestampConverter()
          Timestamp date,
      @QuestionDtoConverter()
          List<QuestionDTO> surveyQuestions,
      @DocumentReferenceConverter()
          DocumentReference<Object?> owner,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          DocumentReference<Object?>? reference});
}

/// @nodoc
class __$$_SurveyDTOCopyWithImpl<$Res>
    extends _$SurveyDtoCopyWithImpl<$Res, _$_SurveyDTO>
    implements _$$_SurveyDTOCopyWith<$Res> {
  __$$_SurveyDTOCopyWithImpl(
      _$_SurveyDTO _value, $Res Function(_$_SurveyDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
    Object? surveyQuestions = null,
    Object? owner = null,
    Object? reference = freezed,
  }) {
    return _then(_$_SurveyDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      surveyQuestions: null == surveyQuestions
          ? _value._surveyQuestions
          : surveyQuestions // ignore: cast_nullable_to_non_nullable
              as List<QuestionDTO>,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyDTO extends _SurveyDTO {
  _$_SurveyDTO(
      {required this.name,
      @ServerTimestampConverter() required this.date,
      @QuestionDtoConverter() required final List<QuestionDTO> surveyQuestions,
      @DocumentReferenceConverter() required this.owner,
      @DocumentReferenceConverter() @JsonKey(ignore: true) this.reference})
      : _surveyQuestions = surveyQuestions,
        super._();

  factory _$_SurveyDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyDTOFromJson(json);

  @override
  final String name;
  @override
  @ServerTimestampConverter()
  final Timestamp date;
  final List<QuestionDTO> _surveyQuestions;
  @override
  @QuestionDtoConverter()
  List<QuestionDTO> get surveyQuestions {
    if (_surveyQuestions is EqualUnmodifiableListView) return _surveyQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_surveyQuestions);
  }

  @override
  @DocumentReferenceConverter()
  final DocumentReference<Object?> owner;
  @override
  @DocumentReferenceConverter()
  @JsonKey(ignore: true)
  final DocumentReference<Object?>? reference;

  @override
  String toString() {
    return 'SurveyDto(name: $name, date: $date, surveyQuestions: $surveyQuestions, owner: $owner, reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._surveyQuestions, _surveyQuestions) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.reference, reference) ||
                other.reference == reference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, date,
      const DeepCollectionEquality().hash(_surveyQuestions), owner, reference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurveyDTOCopyWith<_$_SurveyDTO> get copyWith =>
      __$$_SurveyDTOCopyWithImpl<_$_SurveyDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyDTOToJson(
      this,
    );
  }
}

abstract class _SurveyDTO extends SurveyDto {
  factory _SurveyDTO(
      {required final String name,
      @ServerTimestampConverter()
          required final Timestamp date,
      @QuestionDtoConverter()
          required final List<QuestionDTO> surveyQuestions,
      @DocumentReferenceConverter()
          required final DocumentReference<Object?> owner,
      @DocumentReferenceConverter()
      @JsonKey(ignore: true)
          final DocumentReference<Object?>? reference}) = _$_SurveyDTO;
  _SurveyDTO._() : super._();

  factory _SurveyDTO.fromJson(Map<String, dynamic> json) =
      _$_SurveyDTO.fromJson;

  @override
  String get name;
  @override
  @ServerTimestampConverter()
  Timestamp get date;
  @override
  @QuestionDtoConverter()
  List<QuestionDTO> get surveyQuestions;
  @override
  @DocumentReferenceConverter()
  DocumentReference<Object?> get owner;
  @override
  @DocumentReferenceConverter()
  @JsonKey(ignore: true)
  DocumentReference<Object?>? get reference;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyDTOCopyWith<_$_SurveyDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionDTO _$QuestionDTOFromJson(Map<String, dynamic> json) {
  return _QuestionDTO.fromJson(json);
}

/// @nodoc
mixin _$QuestionDTO {
  String get name => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionDTOCopyWith<QuestionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDTOCopyWith<$Res> {
  factory $QuestionDTOCopyWith(
          QuestionDTO value, $Res Function(QuestionDTO) then) =
      _$QuestionDTOCopyWithImpl<$Res, QuestionDTO>;
  @useResult
  $Res call({String name, List<String> options});
}

/// @nodoc
class _$QuestionDTOCopyWithImpl<$Res, $Val extends QuestionDTO>
    implements $QuestionDTOCopyWith<$Res> {
  _$QuestionDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_QuestionDTOCopyWith<$Res>
    implements $QuestionDTOCopyWith<$Res> {
  factory _$$_QuestionDTOCopyWith(
          _$_QuestionDTO value, $Res Function(_$_QuestionDTO) then) =
      __$$_QuestionDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> options});
}

/// @nodoc
class __$$_QuestionDTOCopyWithImpl<$Res>
    extends _$QuestionDTOCopyWithImpl<$Res, _$_QuestionDTO>
    implements _$$_QuestionDTOCopyWith<$Res> {
  __$$_QuestionDTOCopyWithImpl(
      _$_QuestionDTO _value, $Res Function(_$_QuestionDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? options = null,
  }) {
    return _then(_$_QuestionDTO(
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
@JsonSerializable()
class _$_QuestionDTO extends _QuestionDTO {
  _$_QuestionDTO({required this.name, required final List<String> options})
      : _options = options,
        super._();

  factory _$_QuestionDTO.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionDTOFromJson(json);

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
    return 'QuestionDTO(name: $name, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionDTO &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionDTOCopyWith<_$_QuestionDTO> get copyWith =>
      __$$_QuestionDTOCopyWithImpl<_$_QuestionDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionDTOToJson(
      this,
    );
  }
}

abstract class _QuestionDTO extends QuestionDTO {
  factory _QuestionDTO(
      {required final String name,
      required final List<String> options}) = _$_QuestionDTO;
  _QuestionDTO._() : super._();

  factory _QuestionDTO.fromJson(Map<String, dynamic> json) =
      _$_QuestionDTO.fromJson;

  @override
  String get name;
  @override
  List<String> get options;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionDTOCopyWith<_$_QuestionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
