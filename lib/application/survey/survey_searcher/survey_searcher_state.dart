part of 'survey_searcher_cubit.dart';

@freezed
class SurveySearcherState with _$SurveySearcherState {
  const factory SurveySearcherState.initial() = _Initial;
  const factory SurveySearcherState.searchSuccess(List<Survey> surveys) = _SearchSuccess;
  const factory SurveySearcherState.searchFailure() = _SearchFailure;
}

