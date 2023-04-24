part of 'survey_form_cubit.dart';

@freezed
abstract class SurveyFormState with _$SurveyFormState{
  factory SurveyFormState({required Survey survey,AutovalidateMode? showErrorMessages,required bool isProcessing,required Option<Either<FirebaseFirestoreFailure,Unit>> surveyFailureSuccessOption})= _SurveyFormState;
  factory SurveyFormState.initial()=>SurveyFormState(survey: Survey.empty(), showErrorMessages: AutovalidateMode.disabled, isProcessing: false,surveyFailureSuccessOption :none());
}
