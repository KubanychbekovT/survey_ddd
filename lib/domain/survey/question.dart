import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:survey/domain/survey/value_objects.dart';

part 'question.freezed.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required QuestionName name,
    required QuestionOptions options,
  }) = _Question;

  factory Question.empty() {
    return Question(
        name: QuestionName(""),
        options: QuestionOptions(const [])
        );
  }
}
