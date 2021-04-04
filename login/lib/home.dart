import 'package:flutter/material.dart';
import './textwidget.dart';
import './button.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
              TextFieldWidget(
                hintText:'Email',
                obscureText:false,
                prefixIconData:Icons.mail_outline
              ),
              SizedBox(height: 12,),
                TextFieldWidget(
                hintText:'Password',
                obscureText:true,
                prefixIconData:Icons.lock_outline
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'forgot Password ?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            ButtonWidget(
              title:'Login',
              hasborder:false,
            ),
            SizedBox(height: 10.0,),
            ButtonWidget(
              title:'Sign up',
              hasborder:true,
            ),
            ],),
          ),
        ],
      ),
    );
  }
}