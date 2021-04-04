import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final int questionIndex ;
  final Function answerQuestion;
  final question ;

  Quiz({@required this.questionIndex,this.question,this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Question(
            question.elementAt(questionIndex)['questionText'],
          ),
          ...(question.elementAt(questionIndex)['answer'] as List<String>).map((answer) {
          return Answer(answer,answerQuestion) ;
          }).toList(),
        //  Answer(answerQuestion),
        //  Answer(answerQuestion)
         
        ],
      ) 
    );
  }
}