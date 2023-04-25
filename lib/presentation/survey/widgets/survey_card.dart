import 'package:flutter/material.dart';
import 'package:survey/domain/survey/survey.dart';
import 'package:intl/intl.dart';
import 'package:survey/presentation/survey/survey_page.dart';

class SurveyCard extends StatelessWidget {
  const SurveyCard({super.key, required this.survey});

  final Survey survey;

  @override
  Widget build(BuildContext context) {
    final String formattedDate = DateFormat('d MMMM yyyy').format(survey.date);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SurveyPage(survey: survey)));
        },
        child: Container(
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color(0xff9e71e7),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FittedBox(
                        child: Text(
                          "Q" +
                              survey.surveyQuestions
                                  .getOrCrash()
                                  .length
                                  .toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      formattedDate,
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    Text(
                      survey.name.getOrCrash(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        height: 1,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
