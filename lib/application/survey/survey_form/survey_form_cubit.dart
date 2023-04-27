import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:survey/domain/survey/i_survey_repository.dart';
import 'package:survey/domain/survey/question.dart';
import 'package:survey/domain/survey/survey.dart';
import 'package:survey/domain/survey/survey_failure.dart';
import 'package:survey/domain/survey/value_objects.dart';

part 'survey_form_state.dart';
part 'survey_form_cubit.freezed.dart';
@injectable
class SurveyFormCubit extends Cubit<SurveyFormState> {
  final ISurveyRepository _surveyRepository;
  SurveyFormCubit(this._surveyRepository) : super( SurveyFormState.initial());
  void initialize(Survey? income){
    emit(state.copyWith(survey: income??Survey.empty()));
  }
  void nameChanged(String name) {
    emit(state.copyWith(
        survey: state.survey.copyWith(name: SurveyName(name)),
        surveyFailureSuccessOption: none()));
  }
  void questionsChanged(List<Question> questions) {
    emit(
      state.copyWith(
        survey: state.survey.copyWith(
         surveyQuestions :  SurveyQuestions(questions),
        ),
        surveyFailureSuccessOption: none(),
      ),
    );
  }

  createSurvey() async {
    // if (state.survey.failureOption.isNone()) {
    //   final value=await _surveyRepository.createSurvey(state.survey);
    //   emit(state.copyWith(surveyFailureSuccessOption: some(value.fold((f) =>left(f), (_) => right(unit)))));
    // }
    // emit(state.copyWith(showErrorMessages: AutovalidateMode.always));
  }

}
