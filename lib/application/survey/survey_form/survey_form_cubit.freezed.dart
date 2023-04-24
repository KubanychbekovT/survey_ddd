// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SurveyFormState {
  Survey get survey => throw _privateConstructorUsedError;
  AutovalidateMode? get showErrorMessages => throw _privateConstructorUsedError;
  bool get isProcessing => throw _privateConstructorUsedError;
  Option<Either<FirebaseFirestoreFailure, Unit>>
      get surveyFailureSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurveyFormStateCopyWith<SurveyFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyFormStateCopyWith<$Res> {
  factory $SurveyFormStateCopyWith(
          SurveyFormState value, $Res Function(SurveyFormState) then) =
      _$SurveyFormStateCopyWithImpl<$Res, SurveyFormState>;
  @useResult
  $Res call(
      {Survey survey,
      AutovalidateMode? showErrorMessages,
      bool isProcessing,
      Option<Either<FirebaseFirestoreFailure, Unit>>
          surveyFailureSuccessOption});

  $SurveyCopyWith<$Res> get survey;
}

/// @nodoc
class _$SurveyFormStateCopyWithImpl<$Res, $Val extends SurveyFormState>
    implements $SurveyFormStateCopyWith<$Res> {
  _$SurveyFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? survey = null,
    Object? showErrorMessages = freezed,
    Object? isProcessing = null,
    Object? surveyFailureSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      survey: null == survey
          ? _value.survey
          : survey // ignore: cast_nullable_to_non_nullable
              as Survey,
      showErrorMessages: freezed == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode?,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      surveyFailureSuccessOption: null == surveyFailureSuccessOption
          ? _value.surveyFailureSuccessOption
          : surveyFailureSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFirestoreFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SurveyCopyWith<$Res> get survey {
    return $SurveyCopyWith<$Res>(_value.survey, (value) {
      return _then(_value.copyWith(survey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SurveyFormStateCopyWith<$Res>
    implements $SurveyFormStateCopyWith<$Res> {
  factory _$$_SurveyFormStateCopyWith(
          _$_SurveyFormState value, $Res Function(_$_SurveyFormState) then) =
      __$$_SurveyFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Survey survey,
      AutovalidateMode? showErrorMessages,
      bool isProcessing,
      Option<Either<FirebaseFirestoreFailure, Unit>>
          surveyFailureSuccessOption});

  @override
  $SurveyCopyWith<$Res> get survey;
}

/// @nodoc
class __$$_SurveyFormStateCopyWithImpl<$Res>
    extends _$SurveyFormStateCopyWithImpl<$Res, _$_SurveyFormState>
    implements _$$_SurveyFormStateCopyWith<$Res> {
  __$$_SurveyFormStateCopyWithImpl(
      _$_SurveyFormState _value, $Res Function(_$_SurveyFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? survey = null,
    Object? showErrorMessages = freezed,
    Object? isProcessing = null,
    Object? surveyFailureSuccessOption = null,
  }) {
    return _then(_$_SurveyFormState(
      survey: null == survey
          ? _value.survey
          : survey // ignore: cast_nullable_to_non_nullable
              as Survey,
      showErrorMessages: freezed == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode?,
      isProcessing: null == isProcessing
          ? _value.isProcessing
          : isProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      surveyFailureSuccessOption: null == surveyFailureSuccessOption
          ? _value.surveyFailureSuccessOption
          : surveyFailureSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FirebaseFirestoreFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SurveyFormState implements _SurveyFormState {
  _$_SurveyFormState(
      {required this.survey,
      this.showErrorMessages,
      required this.isProcessing,
      required this.surveyFailureSuccessOption});

  @override
  final Survey survey;
  @override
  final AutovalidateMode? showErrorMessages;
  @override
  final bool isProcessing;
  @override
  final Option<Either<FirebaseFirestoreFailure, Unit>>
      surveyFailureSuccessOption;

  @override
  String toString() {
    return 'SurveyFormState(survey: $survey, showErrorMessages: $showErrorMessages, isProcessing: $isProcessing, surveyFailureSuccessOption: $surveyFailureSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyFormState &&
            (identical(other.survey, survey) || other.survey == survey) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isProcessing, isProcessing) ||
                other.isProcessing == isProcessing) &&
            (identical(other.surveyFailureSuccessOption,
                    surveyFailureSuccessOption) ||
                other.surveyFailureSuccessOption ==
                    surveyFailureSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, survey, showErrorMessages,
      isProcessing, surveyFailureSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurveyFormStateCopyWith<_$_SurveyFormState> get copyWith =>
      __$$_SurveyFormStateCopyWithImpl<_$_SurveyFormState>(this, _$identity);
}

abstract class _SurveyFormState implements SurveyFormState {
  factory _SurveyFormState(
      {required final Survey survey,
      final AutovalidateMode? showErrorMessages,
      required final bool isProcessing,
      required final Option<Either<FirebaseFirestoreFailure, Unit>>
          surveyFailureSuccessOption}) = _$_SurveyFormState;

  @override
  Survey get survey;
  @override
  AutovalidateMode? get showErrorMessages;
  @override
  bool get isProcessing;
  @override
  Option<Either<FirebaseFirestoreFailure, Unit>> get surveyFailureSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyFormStateCopyWith<_$_SurveyFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
