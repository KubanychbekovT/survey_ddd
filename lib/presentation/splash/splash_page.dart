import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:survey/application/auth/auth_bloc.dart';
import 'package:survey/domain/survey/question.dart';
import 'package:survey/domain/survey/survey.dart';
import 'package:survey/domain/survey/value_objects.dart';
import 'package:survey/infrastructure/core/firestore_helpers.dart';
import 'package:survey/presentation/sign_in/sign_in_page.dart';
import 'package:survey/presentation/survey/survey_overview_page.dart';
import 'package:survey/presentation/survey/survey_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
            initial: (_) {},
            unAuthenticated: (_) => Navigator.push(
                context,MaterialPageRoute(builder: (context)=>SignInPage())),
            authenticated: (_) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SurveyPage(
                          survey: Survey(
                              surveyQuestions: SurveyQuestions([
                                Question(
                                    name: QuestionName(
                                        "How do you relate to neo people"),
                                    options: QuestionOptions([
                                      QuestionOptionName(
                                        "Good",
                                      ),
                                      QuestionOptionName("Bad")
                                    ])),
                                Question(
                                    name: QuestionName(
                                        "How do you relate to old people"),
                                    options: QuestionOptions([
                                      QuestionOptionName(
                                        "Good",
                                      ),
                                      QuestionOptionName("Normal")
                                    ])),
                              ]),
                              name: SurveyName("Tolerancy"),
                              date: DateTime.now(),
                              reference: FirebaseFirestore.instance.dummyRef))));

            }, loading: (value) {  });
      },
      child: const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}