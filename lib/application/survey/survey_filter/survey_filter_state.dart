part of 'survey_filter_cubit.dart';

@freezed
class SurveyFilterState with _$SurveyFilterState{
  factory SurveyFilterState(SurveyFilterType type)=_ProjectFilterState;
  factory SurveyFilterState.initial() => SurveyFilterState(SurveyFilterType.all
  );
}

