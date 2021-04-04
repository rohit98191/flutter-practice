import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscureText;
  TextFieldWidget({this.hintText,this.prefixIconData,this.obscureText,this.suffixIconData});
  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: false,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: hintText,
        filled: true,
        enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(30)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),borderRadius: BorderRadius.all(Radius.circular(20))),
        // border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red),borderRadius: BorderRadius.all(Radius.circular(20))),
        // hintText: hintText,
        prefixIcon: Icon(
          prefixIconData,
          size:18,
          color: Colors.blueAccent,
          textDirection: TextDirection.ltr,
        ),
        labelStyle: TextStyle(color: Colors.blueAccent)
      ),
    );
  }
}