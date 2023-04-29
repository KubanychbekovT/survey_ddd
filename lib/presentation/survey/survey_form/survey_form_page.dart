import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:survey/application/survey/survey_form/survey_form_cubit.dart';
import 'package:survey/injection.dart';
import 'package:survey/presentation/survey/survey_form/misc/build_context_x.dart';
import 'package:survey/presentation/survey/survey_form/misc/question_presentation_classes.dart';

class SurveyFormPage extends StatelessWidget {
  const SurveyFormPage({Key? key}) : super(key: key);

  InputDecoration _inputDecoration(String labelText) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(color: Color(0xff6d30bc)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xffe8dbf9), width: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: BlocProvider(
          create: (context) => getIt<SurveyFormCubit>(),
          child: Builder(builder: (context) {
            return ChangeNotifierProvider(
              create: (_) => FormQuestions(),
              child: BlocConsumer<SurveyFormCubit, SurveyFormState>(
                listenWhen: (p, c) =>
                p.surveyFailureSuccessOption != c.surveyFailureSuccessOption,
                listener: (context, state) {
                  state.surveyFailureSuccessOption.fold(
                        () {},
                        (either) {
                      either.fold(
                            (failure) {
                        },
                            (_) {
                              Navigator.pop(context);
                        },
                      );
                    },
                  );
                },
                builder: (context, state) {
                  return Form(
                    autovalidateMode: state.showErrorMessages,
                    child: ListView(
                      children: [
                        TextFormField(
                          decoration: _inputDecoration('Survey name'),
                          onChanged: (value) => context
                              .read<SurveyFormCubit>()
                              .nameChanged(value),
                          validator: (_) => context
                              .read<SurveyFormCubit>()
                              .state
                              .survey
                              .name
                              .value
                              .fold(
                                  (f) => f.maybeMap(
                                      empty: (value) =>
                                          "Survey name cannot be empty",
                                      orElse: () => null),
                                  (r) => null),
                          style: TextStyle(color: Color(0xff6d30bc)),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Consumer<FormQuestions>(
                          builder: (context, formQuestions, child) {
                            return Column(
                              children: [
                                for (int i = 0;
                                    i < formQuestions.value.length;
                                    i++) ...[
                                  () {
                                    final question = formQuestions.value[i];
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 16.0),
                                      child: Material(
                                        elevation: 2,
                                        child: Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Column(
                                            children: [
                                              TextFormField(
                                                decoration: _inputDecoration(
                                                    'Question'),
                                                onChanged: (value) {
                                                  context.formQuestions =
                                                      context.formQuestions
                                                          .map(
                                                            (listQuestion) {
                                                            return  listQuestion ==
                                                                  question
                                                                  ? listQuestion
                                                                  .copyWith(
                                                                  name:
                                                                  value)
                                                                  : listQuestion
                                                              ;
                                                            }
                                                          )
                                                          .toList();
                                                  context
                                                      .read<SurveyFormCubit>()
                                                      .questionsChanged(context
                                                          .formQuestions);
                                                },
                                                validator: (_) {
                                                  return context
                                                      .read<SurveyFormCubit>()
                                                      .state
                                                      .survey
                                                      .surveyQuestions
                                                      .value
                                                      .fold(
                                                        // Failure stemming from the TodoList length should NOT be displayed by the individual TextFormFields
                                                        (f) => null,
                                                        (questionList) =>
                                                            questionList[i]
                                                                .name
                                                                .value
                                                                .fold(
                                                          (f) {
                                                            return f.maybeMap(
                                                              empty: (_) =>
                                                                  'Cannot be empty',
                                                              exceedingLength:
                                                                  (_) =>
                                                                      'Too long',
                                                              orElse: () =>
                                                                  null,
                                                            );
                                                          },
                                                          (_) => null,
                                                        ),
                                                      );
                                                },
                                                style: TextStyle(
                                                    color: Color(0xff6d30bc)),
                                              ),
                                              ...question.options.map((option) {
                                                (option);
                                                return Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 8),
                                                  child: TextFormField(
                                                    decoration:
                                                        _inputDecoration(
                                                            'Option'),
                                                    onChanged: (value) {
                                                      context.formQuestions =
                                                          context.formQuestions
                                                              .map(
                                                                (listQuestion) => listQuestion ==
                                                                        question
                                                                    ? question.copyWith(
                                                                        options: question
                                                                            .options
                                                                            .map((listOption) => listOption == option
                                                                                ? value
                                                                                : listOption)
                                                                            .toList())
                                                                    : question,
                                                              )
                                                              .toList();
                                                      context
                                                          .read<
                                                              SurveyFormCubit>()
                                                          .optionsChanged(
                                                              context
                                                                  .formQuestions[
                                                                      i]
                                                                  .options,
                                                              i);
                                                    },
                                                    validator: (_) {
                                                      return context
                                                          .read<
                                                              SurveyFormCubit>()
                                                          .state
                                                          .survey
                                                          .surveyQuestions
                                                          .value
                                                          .fold(
                                                            (f) => null,
                                                            (questionList) =>
                                                                questionList[i]
                                                                    .options
                                                                    .value
                                                                    .fold(
                                                              (f) {
                                                                return f
                                                                    .maybeMap(
                                                                  empty: (_) =>
                                                                      'Cannot be empty',
                                                                  exceedingLength:
                                                                      (_) =>
                                                                          'Too long',
                                                                  orElse: () =>
                                                                      null,
                                                                );
                                                              },
                                                              (_) => null,
                                                            ),
                                                          );
                                                    },
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff6d30bc)),
                                                  ),
                                                );
                                              }),

                                              Center(
                                                child: SizedBox(
                                                  height: 40,
                                                  width: 100,
                                                  child: TextButton(
                                                      style: TextButton.styleFrom(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12))),
                                                      onPressed: () {
                                                        final formQuestions =
                                                            context
                                                                .formQuestions
                                                                .toList();
                                                        formQuestions[
                                                            i] = formQuestions[
                                                                i]
                                                            .copyWith(
                                                                options:
                                                                    formQuestions[
                                                                      i]
                                                                        .options.toList()
                                                                      ..add(
                                                                          ""));
                                                        context.formQuestions =
                                                            formQuestions;
                                                        context
                                                            .read<SurveyFormCubit>()
                                                            .optionsChanged(
                                                            formQuestions[i].options,i);
                                                      },
                                                      child: Text(
                                                        "Add option",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff6d30bc)),
                                                      )),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }()
                                ]
                              ],
                            );
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 40,
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12))),
                                    onPressed: () {
                                      context.formQuestions
                                          .add(QuestionPrimitive.empty());
                                      context
                                          .read<SurveyFormCubit>()
                                          .questionsChanged(
                                              context.formQuestions);
                                    },
                                    child: Text(
                                      "Add question",
                                      style:
                                          TextStyle(color: Color(0xff6d30bc)),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 40,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff9e71e7),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12))),
                                    onPressed: () {
                                      state.survey.surveyQuestions.value.fold(
                                          (f) => ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                                  content: Text(
                                                      "You must have at least 2 questions."))),
                                          (surveyQuestions) {
                                        bool insufficientOptions = false;
                                        for (var surveyQuestion
                                            in surveyQuestions) {
                                          if (!surveyQuestion.options
                                              .isValid()) {
                                            insufficientOptions = true;
                                            break;
                                          }
                                        }
                                        if (insufficientOptions) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                                  content: Text(
                                                      "You must have at least 2 options in every question.")));
                                        } else {
                                          context
                                              .read<SurveyFormCubit>()
                                              .createSurvey();
                                        }
                                      });
                                    },
                                    child: Text("Submit")),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          }),
        ),
      ),
    );
  }
}
