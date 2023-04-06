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
      home: SurveyOverviewPage(),
    );
  }
}

class SurveyOverviewPage extends StatefulWidget {
  const SurveyOverviewPage({Key? key}) : super(key: key);

  @override
  State<SurveyOverviewPage> createState() => _SurveyOverviewPageState();
}

class _SurveyOverviewPageState extends State<SurveyOverviewPage> {
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
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 69),
          padding: EdgeInsets.fromLTRB(32, 41, 32, 78),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(20),
          ),
          child: QuestionCard(),
        ),
      ),
    );

  }
}

