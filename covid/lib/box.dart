import 'package:flutter/material.dart';

class Box extends StatelessWidget { 
  String title;
  double media;
  Color color;
  String subtitle;

  Box({this.title,this.media,this.color,this.subtitle});
  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.only(left:20.0,top: 8.0),
              child: Container(
                  height: 150.0,
                width: MediaQuery.of(context).size.width * media,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height:40),
                  Text(title,style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                  ),),
                   SizedBox(height:15),
                  Text(subtitle,style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                  ),)
                ],
              ),
            ),
              ),
            );
  }
}