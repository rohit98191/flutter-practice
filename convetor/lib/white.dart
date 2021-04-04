import 'package:flutter/material.dart';

class WhiteBoard extends StatefulWidget {
  final origCurrency;
  final convCurrency;
  WhiteBoard({this.origCurrency,this.convCurrency});
  @override
  _WhiteBoardState createState() => _WhiteBoardState();
}

class _WhiteBoardState extends State<WhiteBoard> {
  var currentVal = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            SizedBox(
              height:20
            ),
            InkWell(
              onTap: (){
                setState(() {
                  currentVal = 0;
                });
              },
              child: Text(
                'Tap to clear',
                style:TextStyle(color: Colors.red,
                fontSize: 20.0)
              ),
            ),
            SizedBox(height:20),
            Row(
              
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      currentVal.toString(),
                      style: TextStyle(
                        color:Color(0xFFEC5759),
                        fontSize: 100.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height:25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    calculate(1);
                  },
                  child:
                  Container(
                  width: 80,
                  height: 80,
                 decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.red
          ),
                  child: Center(
                    child:Text(
              '1',
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal
              ),
            ), 
                  ),
                ),
                   ),
                InkWell(
                  onTap: (){
                    calculate(2);
                  },
                  child:
                  Container(
                  width: 80,
                  height: 80,
                 decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.red
          ),
                  child: Center(
                    child:Text(
              '2',
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal
              ),
            ), 
                  ),
                ),
                   ),
                   InkWell(
                  onTap: (){
                    calculate(3);
                  },
                  child:
                  Container(
                  width: 80,
                  height: 80,
                 decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.red
          ),
                  child: Center(
                    child:Text(
              '3',
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal
              ),
            ), 
                  ),
                ),
                   ),
              ],
            ),
           SizedBox(height:25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    calculate(4);
                  },
                  child:
                  Container(
                  width: 80,
                  height: 80,
                 decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.red
          ),
                  child: Center(
                    child:Text(
              '4',
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal
              ),
            ), 
                  ),
                ),
                   ),
                InkWell(
                  onTap: (){
                    calculate(5);
                  },
                  child:
                  Container(
                  width: 80,
                  height: 80,
                 decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.red
          ),
                  child: Center(
                    child:Text(
              '5',
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal
              ),
            ), 
                  ),
                ),
                   ),
                   InkWell(
                  onTap: (){
                    calculate(6);
                  },
                  child:
                  Container(
                  width: 80,
                  height: 80,
                 decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.red
          ),
                  child: Center(
                    child:Text(
              '6',
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal
              ),
            ), 
                  ),
                ),
                   ),
              ],
            ),
            SizedBox(height:25),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    calculate(7);
                  },
                  child:
                  Container(
                  width: 80,
                  height: 80,
                 decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.red
          ),
                  child: Center(
                    child:Text(
              '7',
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal
              ),
            ), 
                  ),
                ),
                   ),
                InkWell(
                  onTap: (){
                    calculate(8);
                  },
                  child:
                  Container(
                  width: 80,
                  height: 80,
                 decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.red
          ),
                  child: Center(
                    child:Text(
              '8',
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal
              ),
            ), 
                  ),
                ),
                   ),
                   InkWell(
                  onTap: (){
                    calculate(9);
                  },
                  child:
                  Container(
                  width: 80,
                  height: 80,
                 decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.red
          ),
                  child: Center(
                    child:Text(
              '9',
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.normal
              ),
            ), 
                  ),
                ),
                   ),
              ],
            ),
          ],
        ),
    );
  }

  Widget numberRow(number1,number2,number3){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: (){
             calculate(number1);
          },    
        ),
        Container(
          width:80,
          height:80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.red
          ),
          child: Center(
            child: Text(
              number1.toString(),
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal
              ),
            ),
          ),
        )

      ],
    );
  }

  calculate(number){
    if(number==0){
      setState(() {
        currentVal = 0;
      });
    }
    else{
      setState(() {
        currentVal = currentVal*10 + number;
      });
    }
  }
}