import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:survey/domain/survey/question.dart';
import 'package:survey/domain/survey/value_objects.dart';

part 'question_presentation_classes.freezed.dart';
class FormQuestions extends ValueNotifier<List<QuestionPrimitive>> {
  FormQuestions() : super([]);
}
@freezed
abstract class QuestionPrimitive implements _$QuestionPrimitive {
  const factory QuestionPrimitive({
    required String name,
    required List<String> options,
  }) = _QuestionPrimitive;

  const QuestionPrimitive._();
  factory QuestionPrimitive.empty() => QuestionPrimitive(
    name: '',
    options: [],
  );

  factory QuestionPrimitive.fromDomain(Question question) {
    return QuestionPrimitive(
      name: question.name.getOrCrash(),
      options: question.options
          .getOrCrash()
          .map((option) => option.getOrCrash())
          .toList(),
    );
  }

  Question toDomain() {
    return Question(
      name: QuestionName(name),
      options: QuestionOptions(
          options.map((optionDto) => QuestionOptionName(optionDto)).toList()),
    );
  }
}
