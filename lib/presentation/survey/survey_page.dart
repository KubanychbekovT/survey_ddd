import 'package:flutter/material.dart';
import 'package:survey/domain/survey/question/survey_question.dart';
import 'package:survey/presentation/survey/question/question_card.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Survey",
      home: SurveyPage(),
    );
  }
}

class SurveyPage extends StatefulWidget {
  const SurveyPage({Key? key}) : super(key: key);

  @override
  State<SurveyPage> createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[300],
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 120, 31, 66),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffe5d1ff),
        ),
        child: QuestionCard(),
      ),
    );

  }
}

