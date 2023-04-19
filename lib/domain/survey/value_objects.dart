import 'package:dartz/dartz.dart';
import 'package:survey/domain/core/failures.dart';
import 'package:survey/domain/core/value_objects.dart';
import 'package:survey/domain/core/value_validators.dart';
import 'package:survey/domain/survey/question.dart';
class QuestionName extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String>  value;
  factory QuestionName(String input){
    return QuestionName._(validateStringNotEmpty(input).andThen(validateMaxStringLength(input, 100)));
  }
  const QuestionName._(this.value);
}
class QuestionOptionName extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String>  value;
  factory QuestionOptionName(String input){
    return QuestionOptionName._(validateStringNotEmpty(input).andThen(validateMaxStringLength(input, 20)));
  }
  const QuestionOptionName._(this.value);
}
class SurveyName extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String>  value;
  factory SurveyName(String input){
    return SurveyName._(validateStringNotEmpty(input).andThen(validateMaxStringLength(input, 50)));
  }
  const SurveyName._(this.value);
}
class QuestionOptions extends ValueObject<List<QuestionOptionName>>{
  @override
  final Either<ValueFailure<List<QuestionOptionName>>, List<QuestionOptionName>>  value;
  factory QuestionOptions(List<QuestionOptionName> input){
    return QuestionOptions._(validateMinListLength(input, 2).andThen(validateMaxListLength(input, 4)));
  }
  const QuestionOptions._(this.value);
}
class SurveyQuestions extends ValueObject<List<Question>>{
  @override
  final Either<ValueFailure<List<Question>>, List<Question>>  value;
  factory SurveyQuestions(List<Question> input){
    return SurveyQuestions._(validateMinListLength(input, 2).andThen(validateMaxListLength(input, 16)));
  }
  const SurveyQuestions._(this.value);
}