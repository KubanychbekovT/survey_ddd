// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
//
// class NewSurveyForm extends StatefulWidget {
//   const NewSurveyForm({Key? key}) : super(key: key);
//
//   @override
//   State<NewSurveyForm> createState() => _NewSurveyFormState();
// }
//
// class _NewSurveyFormState extends State<NewSurveyForm> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _surveyNameController = TextEditingController();
//
//   @override
//   void dispose(){
//     _surveyNameController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Create New Survey'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//             child: Column(
//               children: [
//                 TextFormField(
//                   controller: _surveyNameController,
//                   decoration: InputDecoration(labelText: 'SurveyName'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a survey name';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 16,),
//                 ElevatedButton(
//                     onPressed: _saveNewSurvey,
//                     child: Text('Save Survey'))
//               ],
//             )),
//       ),
//     );
//   }
//
//   void _saveNewSurvey(){
//     if (_formKey.currentState!.validate()) {
//       FirebaseFirestore.instance.collection('surveys').add({
//         'name': _surveyNameController.text,
//         'date': DateTime.now(),
//         'surveyQuestions': [],
//       }).then((value) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Survey created')),
//         );
//         Navigator.pop(context);
//       }).catchError((error) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to create survey: $error')),
//         );
//       });
//     }
//   }
// }
