part of 'survey_watcher_cubit.dart';

@freezed
abstract class SurveyWatcherState with _$SurveyWatcherState{
  factory SurveyWatcherState.initial()=_Initial;
  factory SurveyWatcherState.loadInProgress()=_LoadInProgress;
  factory SurveyWatcherState.loadSuccess(List<Survey> surveys)=_LoadSuccess;
  factory SurveyWatcherState.loadFailure(FirebaseFirestoreFailure projectFailure)=_LoadFailure;

}