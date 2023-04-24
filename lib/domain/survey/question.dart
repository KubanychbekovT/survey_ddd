import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:survey/domain/core/failures.dart';
import 'package:survey/domain/survey/value_objects.dart';

part 'question.freezed.dart';

@freezed
abstract class Question implements _$Question {
  const factory Question({
    required QuestionName name,
    required QuestionOptions options,
  }) = _Question;
  const Question._();

  factory Question.empty() {
    return Question(name: QuestionName(""), options: QuestionOptions(const []));
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
      //  .andThen(options.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
