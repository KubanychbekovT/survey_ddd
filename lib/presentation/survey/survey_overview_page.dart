import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:survey/application/survey/survey_filter/survey_filter_cubit.dart';
import 'package:survey/application/survey/survey_searcher/survey_searcher_cubit.dart';
import 'package:survey/application/survey/survey_watcher/survey_watcher_cubit.dart';
import 'package:survey/domain/survey/survey.dart';
import 'package:survey/presentation/core/enums/survey_filter_enum.dart';
import 'package:survey/presentation/core/widgets/custom_progress_indicator.dart';
import 'package:survey/presentation/core/widgets/custom_scaffold.dart';
import 'package:survey/presentation/core/widgets/new_survey_form.dart';
import 'package:survey/presentation/survey/survey_form/survey_form_page.dart';
import 'package:survey/presentation/survey/widgets/survey_card.dart';

class SurveyOverviewPage extends StatelessWidget {
  const SurveyOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SurveyFilterCubit>(
      create: (context) => SurveyFilterCubit(),
      child: BlocProvider(
        create: (context) => SurveySearcherCubit(),
        child: CustomScaffold(
          title: "Surveys",
          body: Column(
            children: [
              _buildSearchBar(context),
              _buildFilterOptions(context),
              SizedBox(height: 16),
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
          onNewSurveyPressed: () => _createNewSurvey(context),
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Search Surveys',
          prefixIcon: Icon(Icons.search),
        ),
        onChanged: (value) {
          context.read<SurveySearcherCubit>().searchSurveys(surveys, value);
        },
      ),
    );
  }

  Widget _buildFilterOptions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            context.read<SurveyFilterCubit>().changeFilter(SurveyFilterType.my);
            },
          child: Text('My Surveys'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Color(0xff9e71e7)),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            context.read<SurveyFilterCubit>().changeFilter(SurveyFilterType.all);
          },
          child: Text('All Surveys'),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color(0xff9e71e7))
          ),
        ),
      ],
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
