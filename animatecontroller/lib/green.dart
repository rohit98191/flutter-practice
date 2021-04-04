import 'package:flutter/material.dart';

class GreenDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff32a05f),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.bottomLeft,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(80))),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.arrow_back),
                        SizedBox(
                          height: 35.0,
                        ),
                        Container(
                          width: 300,
                          child: Text(
                            'Fiddle Leaf Fig Topiary',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          '10" Nursery Pot',
                          style: TextStyle(color: Colors.black45),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        RichText()
                      ],
                    )
                  ]),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Text('Heelo'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
