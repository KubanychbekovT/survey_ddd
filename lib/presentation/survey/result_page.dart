// import 'package:flutter/material.dart';
// import 'package:survey/domain/survey/question/survey_question.dart';
//
// class ResultPage extends StatelessWidget {
//   final List<Question> questions;
//   final List<int> selectedAnswers;
//
//   const ResultPage({Key? key, required this.questions,
//     required this.selectedAnswers
//   })
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//      backgroundColor: Color(0xffe5d1ff),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               'Your answers:',
//               style: TextStyle(color: Colors.black54, fontSize: 32, fontWeight: FontWeight.w300),
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: questions.length,
//               itemBuilder: (context, index) {
//                 final question = questions[index];
//                 final selectedAnswer = selectedAnswers[index];
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(
//                       vertical: 8.0, horizontal: 16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Q${index + 1}. ${question.questionText}',
//                         style: TextStyle(color: Colors.deepPurple[400], fontSize: 25, fontWeight: FontWeight.w300)
//                       ),
//                       SizedBox(height: 18.0),
//                       Text(
//                         'Your answer: ${question.answerList[selectedAnswers[index]].answerText ?? 'Not answered'}',
//                         style: TextStyle(fontSize: 25, color: Colors.black54),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//


// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class SurveyResultPage extends StatelessWidget {
//   final String surveyId;
//
//   const SurveyResultPage({Key? key, required this.surveyId}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Survey Results'),
//       ),
//       body: BlocProvider(
//
//       ),
//     );
//   }
// }
