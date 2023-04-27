import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:survey/application/survey/survey_form/survey_form_cubit.dart';
import 'package:survey/injection.dart';

class SurveyCreationPage extends StatelessWidget {
  const SurveyCreationPage({Key? key}) : super(key: key);

  InputDecoration _inputDecoration(String labelText) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(color: Color(0xff6d30bc)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xffe8dbf9), width: 2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Color(0xff6d30bc), width: 2),
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
          child: BlocConsumer<SurveyFormCubit, SurveyFormState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Form(
                autovalidateMode: state.showErrorMessages,
                child: ListView(
                  children: [
                    TextFormField(
                      decoration: _inputDecoration('Survey name'),
                      autovalidateMode: state.showErrorMessages,
                      onChanged: (value) =>
                          context.read<SurveyFormCubit>().nameChanged(value),
                      validator: (_) => context
                          .read<SurveyFormCubit>()
                          .state
                          .survey
                          .name
                          .value
                          .fold(
                              (f) => f.maybeMap(
                                  empty: (value) => "Name cannot bae empty",
                                  orElse: () => null),
                              (r) => null),
                      style: TextStyle(color: Color(0xff6d30bc)),
                    ),
                    Column(children: [
                      state.survey.surveyQuestions.value.fold((l) => null, (r) => null);
                    ],)
                    Material(
                      elevation: 2,
                      child: Container(
                        color: Colors.white,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                        child: TextFormField(
                          decoration: _inputDecoration('Question'),
                          autovalidateMode: AutovalidateMode.always,
                          // onChanged: (value) {
                          //   _formKey.currentState!.validate();
                          // },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a question';
                            }

                            return null;
                          },
                          style: TextStyle(color: Color(0xff6d30bc)),
                        ),
                      ),
                    ),
                    // ..._optionControllers.map((controller) {
                    //   return Padding(
                    //     padding: EdgeInsets.symmetric(vertical: 8),
                    //     child: TextFormField(
                    //       controller: controller,
                    //       decoration: _inputDecoration('Option'),
                    //       validator: (value) {
                    //         if (value == null || value.isEmpty) {
                    //           return 'Please enter an option';
                    //         }
                    //         return null;
                    //       },
                    //       style: TextStyle(color: Color(0xff6d30bc)),
                    //     ),
                    //   );
                    // }).toList(),
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
                                        borderRadius: BorderRadius.circular(
                                            12))),
                                onPressed: () {
                                  //_addOption();
                                },
                                child: Text(
                                  "Add question",
                                  style: TextStyle(color: Color(0xff6d30bc)),
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
                                        borderRadius: BorderRadius.circular(
                                            12))),
                                onPressed: () {
                                  // _submitForm();
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
        ),
      ),
    );
  }
}
