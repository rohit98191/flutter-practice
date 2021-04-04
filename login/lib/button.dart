import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final bool hasborder;
  ButtonWidget({this.title,this.hasborder});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        child: InkWell(
          child: Container(
            decoration: BoxDecoration(
          color: hasborder ? Colors.white:Colors.blue,
          borderRadius: BorderRadius.circular(10.0),
          border: hasborder ?
          Border.all(color:Colors.blue,width: 1.0):Border.fromBorderSide(BorderSide.none),
        ),
            height: 60.0,
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                color: hasborder ? Colors.blue : Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16.0
              ),
            ),
          ),
        ),
      ),
    );
  }
}