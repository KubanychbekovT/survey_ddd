import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:survey/domain/survey/i_survey_repository.dart';
import 'package:survey/domain/survey/survey.dart';
import 'package:survey/domain/survey/survey_failure.dart';
import 'package:survey/domain/survey/survey_result.dart';

part 'survey_actor_state.dart';

part 'survey_actor_cubit.freezed.dart';

@injectable
class SurveyActorCubit extends Cubit<SurveyActorState> {
  final ISurveyRepository _surveyRepository;

  SurveyActorCubit(this._surveyRepository)
      : super(const SurveyActorState.initial());

  deleteSurvey(Survey survey) async {
    final failureOrSuccess = await _surveyRepository.deleteSurvey(survey);
    if (!isClosed) {
      emit(failureOrSuccess.fold((f) => SurveyActorState.deleteSurveyFailure(f),
          (_) => const SurveyActorState.deleteSurveySuccess()));
    }
  }

  addSurveyResult(SurveyResult surveyResult) async {
    final failureOrSuccess =
        await _surveyRepository.addSurveyResult(surveyResult);
    if (!isClosed) {
      emit(failureOrSuccess.fold(
          (f) => SurveyActorState.addSurveyResultFailure(f),
          (_) => const SurveyActorState.addSurveyResultSuccess()));
    }
  }
}
