import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final String answer;
  Answer( this.answer ,this.answerQuestion);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(child:Text(answer), onPressed: ()=>answerQuestion(answer),color: Colors.blue,textColor: Colors.white,splashColor: Colors.transparent,textTheme:ButtonTextTheme.primary ,),
    );
  }
}
