import 'package:flutter/material.dart';
import 'package:survey/presentation/survey/widgets/survey_card.dart';

class SurveyOverviewPage extends StatelessWidget {
  const SurveyOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffe5d1ff),
        body: Column(
          children: [
            Text('Surveys', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            ListView.builder(
              shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SurveyCard(),
                ),
            itemCount: 8,),
          ],
        ),
    );
  }
}


