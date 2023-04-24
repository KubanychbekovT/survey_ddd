import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:survey/domain/survey/i_survey_repository.dart';
import 'package:survey/domain/survey/survey.dart';
import 'package:survey/domain/survey/survey_failure.dart';

part 'survey_watcher_state.dart';
part 'survey_watcher_cubit.freezed.dart';
@injectable
class SurveyWatcherCubit extends Cubit<SurveyWatcherState> {
  final ISurveyRepository _surveyRepository;
  SurveyWatcherCubit(this._surveyRepository) : super( SurveyWatcherState.initial());
  startWatchAll (e) {
  emit(SurveyWatcherState.loadInProgress());
  _surveyRepository.watchAllSurveys().listen((failureOrSurveys) {
    _receiveSurveys(failureOrSurveys);
  });
  }
  _receiveSurveys (Either<FirebaseFirestoreFailure,List<Survey>> failureOrSurveys) {
  emit(failureOrSurveys.fold((f) => SurveyWatcherState.loadFailure(f),
  (notes) => SurveyWatcherState.loadSuccess(notes)));
  }
}
