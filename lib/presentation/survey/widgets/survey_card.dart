import 'package:flutter/material.dart';

class SurveyCard extends StatelessWidget {
  const SurveyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => ,
        //   ),
        // );
      },
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        margin: EdgeInsets.symmetric(horizontal: 32),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Most liked music?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  height: 1,
                  color: Colors.black,
                ),
              ),
              Text("4 of 17 questions")
            ],
          ),
        ),
      ),
    );
  }
}