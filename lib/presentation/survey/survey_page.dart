import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:survey/application/survey/survey_actor/survey_actor_cubit.dart';
import 'package:survey/domain/survey/question.dart';
import 'package:survey/domain/survey/survey.dart';
import 'package:survey/domain/survey/survey_result.dart';
import 'package:survey/infrastructure/core/firestore_helpers.dart';
import 'package:survey/presentation/survey/result_page.dart';
import 'package:survey/presentation/survey/widgets/answer_option.dart';
import 'package:survey/presentation/survey/widgets/next_button.dart';

class SurveyPage extends StatefulWidget {
  const SurveyPage({Key? key, required this.survey}) : super(key: key);
  final Survey survey;

  @override
  State<SurveyPage> createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  int currentQuestionIndex = 0;
  int? selectedAnswer;
  List<int> answers = [];

  @override
  Widget build(BuildContext context) {
    final Question question =
        widget.survey.surveyQuestions.getOrCrash()[currentQuestionIndex];
    return BlocListener<SurveyActorCubit, SurveyActorState>(
  listener: (context, state) {
   state.maybeMap(addSurveyResultSuccess: (_){
     Navigator.pop(context);
   },orElse: (){});
  },
  child: Scaffold(
      backgroundColor: Color(0xffe5d1ff),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(32, 41, 32, 32),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Q${currentQuestionIndex + 1}',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w400,
                              height: 1.2575,
                              color: Color(0x56863be6),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(1, 0, 0, 61),
                            constraints: BoxConstraints(
                              maxWidth: 237,
                            ),
                            child: Text(
                              question.name.getOrCrash(),
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                                height: 1.2575,
                                color: Color(0xff6d30bc),
                              ),
                            ),
                          ),
                          ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: question.options.getOrCrash().length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                final answer = question.options
                                    .getOrCrash()[index]
                                    .getOrCrash();
                                return AnswerOption(
                                  question: question,
                                  index: index,
                                  isSelected: index == selectedAnswer,
                                  onTap: () {
                                    setState(() {
                                      selectedAnswer = index;
                                    });
                                  },
                                );
                              }),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          () {
            final isLastQuestion = currentQuestionIndex ==
                widget.survey.surveyQuestions.getOrCrash().length - 1;
            return NextButton(
              onTap: () {
                answers.add(selectedAnswer!);
                if (isLastQuestion) {
                  context.read<SurveyActorCubit>().addSurveyResult(
                        SurveyResult(
                            surveyReference: widget.survey.reference,
                            participantReference:
                                FirebaseFirestore.instance.dummyRef,
                            date: DateTime.now(),
                            answers: answers),
                      );
                } else {
                  setState(() {
                    selectedAnswer = null;
                    currentQuestionIndex++;
                  });
                }
              },
              isLastQuestion: isLastQuestion,
            );
          }(),
          SizedBox(
            height: 32,
          )
        ],
      ),
    ),
);
  }
}
