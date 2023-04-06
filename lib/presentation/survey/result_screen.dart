import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9e71e7),
      body:
          Center(
            child: Text("Thanks for your answers!",
            style: TextStyle(fontSize: 24),
            ),
          ),
    );
  }
}
