import 'package:flutter/material.dart';
import './currency.service.dart';
import './white.dart';
class Dashboard extends StatefulWidget {
  final currencyVal;
  final convertedCurrency;
  final currencyone;
  final currenytwo;
  final isWhite;
  Dashboard({
    this.currencyVal=0.0,
    this.convertedCurrency='USD',
    this.currencyone='USD',
    this.currenytwo='RUB',
    this.isWhite = false
  });
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body:Stack(
        fit: StackFit.passthrough,
        children: <Widget>[     
         Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
      ),
      Container(
        width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/2,
      color: Colors.red,
      ),
      Container(
        child: Center(
          child: Column(
            children: <Widget>[
            SizedBox(height: 60,),
            InkWell(
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder:(context)=>WhiteBoard(origCurrency: widget.currencyone,convCurrency: widget.currenytwo,)
                ));
              },
              child: Text(
                CurrenyService().getCurrencyString(widget.currencyone),
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),
              ),),
              SizedBox(height: 20,),
               InkWell(
              onTap: (){},
              child: Text(
                widget.currencyVal.toString(),
                style: TextStyle(
                  fontSize: 120.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),
              ),),
              SizedBox(height: 5,),
              Text(
                widget.convertedCurrency,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
                SizedBox(height: 20,),
              Container(
                height: 125,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.white,
                  border: Border.all(color:Colors.red,width:5,style: BorderStyle.solid)
                ),
                child: Center(
                  child: widget.isWhite ? Icon(
                    Icons.arrow_upward,
                    size: 50.0,
                    color: Colors.red,
                  ):
                  Icon(
                    Icons.arrow_downward,
                    size: 50.0,
                    color: Colors.red,
                  )
                  ,
                ),
              ),
              SizedBox(height: 20,),
            InkWell(
              onTap: (){},
              child: Text(
                widget.currenytwo,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.red
                ),
              ),),
              SizedBox(height: 20,),
               InkWell(
              onTap: (){},
              child: Text(
             widget.currencyVal.toString() ,
                style: TextStyle(
                  fontSize: 120.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.red
                ),
              ),),
              SizedBox(height: 5,),
              Text(
                CurrenyService().getCurrencyString(widget.currenytwo)
                ,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red
                ),
              ),
          ],
          ),
        ),
      ),
        ],
      ) 
    );
    
  }
}