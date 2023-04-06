import 'package:flutter/material.dart';
import 'package:survey/domain/survey/question/survey_question.dart';

class AnswerOption extends StatelessWidget {
  const AnswerOption({Key? key, required this.isSelected, required this.answer, required this.onTap}) : super(key: key);
  final bool isSelected;
  final Answer answer;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       onTap();
      },
      highlightColor: Colors.transparent, // set the highlight color
      splashColor: Color(0xff6d30bc),
      child: Container(

        margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
        padding: EdgeInsets.fromLTRB(31, 31, 31, 44),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: isSelected?Color(0xff6d30bc):Color(0xffe8dbf9),width: 2),
          color: isSelected?Color(0xff6d30bc).withOpacity(0.1):Color(0xffffffff),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(answer.answerText,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            height: 1.2575,
            color: Color(0xff6d30bc),
          ),),
      ),
    );
  }
}
