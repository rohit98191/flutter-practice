import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   int _questionIndex = 0;
    bool containQuestion = true;
     static final question = const [{'questionText':'what\'s is your favourite color ?','answer':['Red','blue','pink','yellow']},
    {'questionText':'favouriate actor ?','answer':['SRK','Rithik']}
    ];
  void answerQuestion(value){
    print(value);
   setState(() {
     if(_questionIndex >= (question.length-1)){ 
       containQuestion = false; 
     }
     
     else{
       print("xzczx");
     _questionIndex = _questionIndex + 1;
     }
   });
  }
  
  void _reset(){
    setState(() {
      print("final state");
       containQuestion = true; 
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.yellow,
        primaryColor: Colors.purple,
      ),
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz Game'),
      ),
      body:containQuestion ? Quiz(question: question,questionIndex: _questionIndex,answerQuestion: answerQuestion,):
      // Center(child:Text('No Quiz',) ,)
      new GestureDetector(
        onTap:(){
        },
        child: Text('Reset Quiz'),),
      )
    );
  }
}
