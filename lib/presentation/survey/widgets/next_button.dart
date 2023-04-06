import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key, required this.onTap, required this.isLastQuestion}) : super(key: key);
  final Function onTap;
  final bool isLastQuestion;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff9e71e7),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
              )
          ),
          onPressed: () {
            onTap();
          },
          child: Text(isLastQuestion ? "Submit" : "Next")
      ),
    );
  }
}
