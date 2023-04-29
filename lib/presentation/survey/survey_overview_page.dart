import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:survey/application/survey/survey_watcher/survey_watcher_cubit.dart';
import 'package:survey/domain/survey/survey.dart';
import 'package:survey/presentation/core/widgets/custom_progress_indicator.dart';
import 'package:survey/presentation/core/widgets/custom_scaffold.dart';
import 'package:survey/presentation/core/widgets/new_survey_form.dart';
import 'package:survey/presentation/survey/survey_form/survey_form_page.dart';
import 'package:survey/presentation/survey/widgets/survey_card.dart';

class SurveyOverviewPage extends StatelessWidget {
  const SurveyOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Surveys",
      body: Column(
        children: [
          BlocBuilder<SurveyWatcherCubit, SurveyWatcherState>(
            builder: (context, state) {
              return state.map(
                  initial: (_) => SizedBox(),
                  loadInProgress: (_) => CustomProgressIndicator(),
                  loadSuccess: (state) {
                    final surveys = state.surveys;
                    return ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final survey = surveys[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SurveyCard(
                            survey: survey,
                          ),
                        );
                      },
                      itemCount: surveys.length,
                    );
                  },
                  loadFailure: (_) => SizedBox());
            },
          ),
        ],
      ),
      onNewSurveyPressed: ()=> _createNewSurvey(context),
    );
  }
  void _createNewSurvey(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SurveyFormPage(),
      ),
    );
}
}
