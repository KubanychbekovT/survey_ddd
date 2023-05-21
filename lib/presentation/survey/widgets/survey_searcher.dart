// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:survey/application/survey/survey_searcher/survey_searcher_cubit.dart';
// import 'package:survey/domain/survey/survey.dart';
// import 'package:survey/presentation/survey/widgets/survey_card.dart';
//
// class SurveySearcher extends StatefulWidget {
//   @override
//   _SurveySearcherState createState() => _SurveySearcherState();
// }
//
// class _SurveySearcherState extends State<SurveySearcher> {
//   final TextEditingController _searchController = TextEditingController();
//
//   @override
//   void dispose() {
//     _searchController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<SurveySearcherCubit, SurveySearcherState>(
//       builder: (context, state) {
//         return Column(
//           children: [
//             TextField(
//               controller: _searchController,
//               onChanged: (value) {
//                 context.read<SurveySearcherCubit>().searchSurveys(
//                   state.survey,
//                   value,
//                 );
//               },
//               decoration: InputDecoration(
//                 hintText: 'Search Surveys',
//                 prefixIcon: Icon(Icons.search),
//               ),
//             ),
//             SizedBox(height: 16),
//             state.map(
//               initial: (_) => SizedBox(),
//               searchSuccess: (state) => Expanded(
//                 child: ListView.builder(
//                   itemCount: state.surveys.length,
//                   itemBuilder: (context, index) {
//                     final survey = state.surveys[index];
//                     return SurveyCard(
//                       survey: survey,
//                     );
//                   },
//                 ),
//               ),
//               searchFailure: (_) => Text('No surveys found.'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
