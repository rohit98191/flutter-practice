import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      padding: EdgeInsets.zero,
        child: Text(
      questionText,
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900,color: Colors.teal,textBaseline: TextBaseline.alphabetic),
      textAlign: (TextAlign.center),
    ));
  }
}
