part of 'survey_actor_cubit.dart';


@freezed
class SurveyActorState with _$SurveyActorState {
  const factory SurveyActorState.deleteSurveySuccess()=_DeleteSurveySuccess;
  const factory SurveyActorState.deleteSurveyFailure(FirebaseFirestoreFailure failureException)=_DeleteSurveyFailure;
  const factory SurveyActorState.addSurveyResultSuccess()=_AddSurveyResultSuccess;
  const factory SurveyActorState.addSurveyResultFailure(FirebaseFirestoreFailure failureException)=_AddSurveyResultFailure;
  const factory SurveyActorState.loadingProgressState()=_LoadingProgressState;
  const factory SurveyActorState.initial()=_Initial;
}
