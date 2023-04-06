import 'package:flutter/material.dart';
import 'package:survey/domain/survey/question/survey_question.dart';
import 'package:survey/presentation/survey/result_screen.dart';

class QuestionCard extends StatefulWidget {
  const QuestionCard({Key? key}) : super(key: key);

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  List<Question> questionList = getQuestion();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 160, 21),
          child: Text('Q${currentQuestionIndex + 1}',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w400,
              height: 1.2575,
              color: Color(0x56863be6),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(1, 0, 0, 61),
          constraints: BoxConstraints(
            maxWidth: 237,
          ),
          child: Text(
            questionList[currentQuestionIndex].questionText,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 24,
              height: 1.2575,
              color: Color(0xff6d30bc),
            ),
          ),
        ),
        _answerList(),
        _nextButton(),
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answerList
          .map((e) => _answerButton(e),
      )
            .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    return InkWell(
      onTap: () {
          if (answer.isCorrect) {
            score++;
          }
          setState(() {
            selectedAnswer = answer;
          });
        print("tapped");
      },
      highlightColor: Colors.transparent, // set the highlight color
      splashColor: Color(0xff6d30bc),
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
        padding: EdgeInsets.fromLTRB(31, 31, 31, 44),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffe8dbf9)),
         color: isSelected?Colors.yellow:Color(0xffffffff),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(answer.answerText,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          height: 1.2575,
          color: Color(0xff6d30bc),
        ),),
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Submit" : "Next"),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff9e71e7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          )
        ),
        onPressed: () {
          if (isLastQuestion) {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => ResultScreen(),));
          }
            setState(() {
              selectedAnswer = null ;
              currentQuestionIndex++;
            });
          }
      ),
    );
  }
}

