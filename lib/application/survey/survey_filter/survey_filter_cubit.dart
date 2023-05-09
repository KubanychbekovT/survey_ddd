import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:survey/presentation/core/enums/survey_filter_enum.dart';

part 'survey_filter_state.dart';
part 'survey_filter_cubit.freezed.dart';

@injectable
class SurveyFilterCubit extends Cubit<SurveyFilterState> {
  SurveyFilterCubit() : super(SurveyFilterState.initial());

  void changeFilter(SurveyFilterType type) {
    emit(state.copyWith(type: type));
  }
}

