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
import 'package:survey/presentation/survey/survey_form/misc/question_presentation_classes.dart';

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
  void optionsChanged(List<String> optionPrimitives,int questionIndex) {
    emit(
      state.copyWith(
        survey: state.survey.copyWith(
          surveyQuestions :SurveyQuestions(state.survey.surveyQuestions.value.fold((_)=>[], (questions){
            final questionList= questions.toList();
            questionList[questionIndex]=questionList[questionIndex].copyWith(options: QuestionOptions(optionPrimitives.map((primitive) => QuestionOptionName(primitive)).toList()));
            return questionList;
          })),
        ),
        surveyFailureSuccessOption: none(),
      ),
    );
  }

  void questionsChanged(List<QuestionPrimitive> questionPrimitives) {
    emit(
      state.copyWith(
        survey: state.survey.copyWith(
         surveyQuestions :  SurveyQuestions(questionPrimitives.map((primitive) => primitive.toDomain()).toList()),
        ),
        surveyFailureSuccessOption: none(),
      ),
    );
  }

  createSurvey() async {
    Either<FirebaseFirestoreFailure, Unit>? failureOrSuccess;
    emit(
      state.copyWith(
        isProcessing: true,
        surveyFailureSuccessOption: none(),
      ),
    );
    if (state.survey.failureOption.isNone()) {
      failureOrSuccess =
     await _surveyRepository.createSurvey(state.survey);
    }

    emit(
      state.copyWith(
        isProcessing: false,
        showErrorMessages: AutovalidateMode.always,
        surveyFailureSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }

}
