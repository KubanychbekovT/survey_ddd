part of 'survey_results_watcher_cubit.dart';

@freezed
class SurveyResultsWatcherState with _$SurveyResultsWatcherState {
  const factory SurveyResultsWatcherState.initial() = _Initial;
  const factory SurveyResultsWatcherState.loadInProgress() = _LoadInProgress;
  const factory SurveyResultsWatcherState.loadSuccess(
      List<SurveyResult> surveyResults) = _LoadSuccess;
  const factory SurveyResultsWatcherState.loadFailure(FirebaseFirestoreFailure surveyFailure) =
      _LoadFailure;
}

