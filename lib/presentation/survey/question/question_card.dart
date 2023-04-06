import 'package:flutter/material.dart';
import 'package:survey/domain/survey/question/survey_question.dart';
import 'package:survey/presentation/survey/result_screen.dart';
import 'package:survey/presentation/survey/widgets/answer_option.dart';

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
        ListView.builder(physics:const NeverScrollableScrollPhysics(),itemCount: questionList[currentQuestionIndex].answerList.length,shrinkWrap:true,itemBuilder: (context,index){
          final answer=questionList[currentQuestionIndex].answerList[index];
          return AnswerOption(answer: answer,isSelected: answer==selectedAnswer,onTap: (){
            if (answer.isCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          },);
    }),
        _nextButton(),
      ],
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

