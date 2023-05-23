import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:survey/domain/survey/survey.dart';
import 'package:survey/domain/survey/survey_result.dart';

import '../../../domain/survey/i_survey_repository.dart';
import '../../../domain/survey/survey_failure.dart';

part 'survey_results_watcher_cubit.freezed.dart';
part 'survey_results_watcher_state.dart';

@injectable
class SurveyResultWatcherCubit extends Cubit<SurveyResultsWatcherState> {
  final ISurveyRepository _surveyRepository;

  SurveyResultWatcherCubit(this._surveyRepository)
      : super(const SurveyResultsWatcherState.initial());

  Future<void> watchAllSurveyResults(String surveyId) async {
    emit(const SurveyResultsWatcherState.loadInProgress());
    final failureOrSurveyResults =
    await _surveyRepository.watchAllSurveyResults(surveyId);
    emit(
      failureOrSurveyResults.fold(
            (f) => SurveyResultsWatcherState.loadFailure(f),
            (surveyResults) => SurveyResultsWatcherState.loadSuccess(surveyResults),
      ),
    );
  }
}