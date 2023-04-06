import 'dart:math';

class Question {
  final String questionText;
  final List<Answer> answerList;

  Question(this.questionText, this.answerList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}


List<Question> getQuestion() {
  List<Question> list = [];

  list.add(Question(
    "What's your favorite car?",
    [
      Answer("BMW", true),
      Answer("Mercedes", true),
    ]..shuffle(),
  ));

  list.add(Question(
    "What's your favorite perfume?",
    [
      Answer("Dior", true),
      Answer("Ferrari", true)
    ]..shuffle(),
  ));

  list.shuffle(Random());

  return list;
}