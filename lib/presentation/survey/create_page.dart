import 'package:flutter/material.dart';

class SurveyCreationPage extends StatefulWidget {
  const SurveyCreationPage({Key? key}) : super(key: key);

  @override
  _SurveyCreationPageState createState() => _SurveyCreationPageState();
}

class _SurveyCreationPageState extends State<SurveyCreationPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _questionController = TextEditingController();
  List<TextEditingController> _optionControllers = [];

  @override
  void dispose() {
    _questionController.dispose();
    _optionControllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  void _addOption() {
    if(_optionControllers.length<4){
      setState(() {
        _optionControllers.add(TextEditingController());
      });
    }

  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      String questionText = _questionController.text;
      List<Map<String, dynamic>> options = _optionControllers
          .map((controller) => {'text': controller.text, 'isCorrect': false})
          .toList();

      // Save the question and options to your data source.

      // After saving, you can navigate back or display a success message.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Survey question created successfully!')),
      );
    }
  }

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
            child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                  TextFormField(
                  controller: _questionController,
                  decoration: _inputDecoration('Question'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a question';
                    }
                    return null;
                  },
                  style: TextStyle(color: Color(0xff6d30bc)),
                ),
                ..._optionControllers.map((controller) {
        return Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: TextFormField(
        controller: controller,
        decoration: _inputDecoration('Option'),
        validator: (value) {
        if (value == null || value.isEmpty) {
        return 'Please enter an option';
        }
        return null;
        },
        style: TextStyle(color: Color(0xff6d30bc)),
        ),
        );
        }).toList(),
        SizedBox(height: 16,),
        Row(children: [
          Expanded(child: SizedBox(
            height: 40,
            child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    )
                ),
                onPressed: () {
                  _addOption();
                },
                child: Text("Add option",style: TextStyle(color: Color(0xff6d30bc)),)
            ),
          ),),
          Expanded(child: SizedBox(
            height: 40,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff9e71e7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    )
                ),
                onPressed: () {
                  _submitForm();
                },
                child: Text("Submit")
            ),
          ),),
        ],),
    ],
    ),
    ),
    ),
    );
  }
}
