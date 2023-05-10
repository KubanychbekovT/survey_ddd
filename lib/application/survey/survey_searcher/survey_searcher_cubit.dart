import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:survey/application/auth/auth_bloc.dart';
import 'package:survey/domain/survey/survey.dart';

part 'survey_searcher_state.dart';
part 'survey_searcher_cubit.freezed.dart';

class SurveySearcherCubit extends Cubit<SurveySearcherState> {
  SurveySearcherCubit() : super(const SurveySearcherState.initial());
  void searchSurveys(List<Survey> surveyList, String query){
    List<Survey> searchedSurveys = surveyList.where((survey) => survey.name.getOrCrash().toLowerCase().contains(query.toLowerCase())).toList();
    emit(searchedSurveys.isNotEmpty?SurveySearcherState.searchSuccess(searchedSurveys):const SurveySearcherState.searchFailure());
  }
}
