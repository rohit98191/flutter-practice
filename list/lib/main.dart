import 'package:flutter/material.dart';
import './transcation.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
 final List<Transcation> transction=[
   Transcation(amount: 12,title: 'Shoe',date: DateTime.now(),id: '1'),
   Transcation(amount: 12,title: 'Shoe',date: DateTime.now(),id: '2'),
   Transcation(amount: 12,title: 'Shoe',date: DateTime.now(),id: '3'),
 ];
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: 
       AppBar(
        title: FlutterLogo(
          colors: Colors.green,
          size: 25.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading:IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back),
          iconSize: 20.0,
          color: Colors.grey,
        ) ,
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu),
            color: Colors.grey,
          )
        ],
      ),
  
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 100,
              color: Colors.white,
              child: Text(
                'Get Coaching',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  textBaseline: TextBaseline.alphabetic
                ),
              ),
              ),
             Container(
               margin: EdgeInsets.fromLTRB(25.0,70.0, 25.0, 0.0),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(25),
                 boxShadow: [
                   BoxShadow(blurRadius: 2,color: Colors.grey),
                 ]
               ),
               child: Row(
                 children: <Widget>[
                   Stack(children: <Widget>[
                     Container(
                       padding: EdgeInsets.fromLTRB(25.0,40.0, 5.0,5.0),
                       child: Text(
                         'You have',
                         style: TextStyle(color: Colors.grey,fontFamily: 'Montserrat',fontStyle: FontStyle.normal,fontSize: 14.0,fontWeight: FontWeight.bold),
                       )
                     ,),
                      Container(              
                       padding: EdgeInsets.fromLTRB(25.0,70.0, 5.0,25.0),
                       child: Text(
                         '206',
                         style: TextStyle(color: Colors.black,fontFamily: 'Montserrat',fontStyle: FontStyle.normal,fontSize: 20.0,fontWeight: FontWeight.bold),
                       )
                     ,)
                   ],),
                   SizedBox(width: 100,),
                   Container(
                     height: 50.0,
                     width: 125.0,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Colors.greenAccent[100].withOpacity(0.5),
                     )
                     ,
                     child:Center(
                       child: Text('Buy Now',
                       style: TextStyle(
                         color: Colors.green.withOpacity(0.7),
                         fontWeight: FontWeight.bold,
                         fontSize: 12.0
                       ),
                       ),
                     ),
                     )
                 ],
               ),
             ) 
          ],),
          SizedBox(height: 40.0,),
          Container(
            padding: EdgeInsets.only(left:25.0,right:25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween
              ,children: <Widget>[
              Text('MY COACHES',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold,color: Colors.grey)),
              Text('VIEW PAST SESSIONS',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold,color: Colors.green.withOpacity(0.7))),
            ],),
          ),
          SizedBox(height: 10,),
          GridView.count(crossAxisCount: 2,shrinkWrap: true,mainAxisSpacing: 4,crossAxisSpacing: 2,
          children: <Widget>[
            buildCard('Rohit', 'Pending', 1),
            buildCard('Rohit', 'Active', 2),
            buildCard('Rohit', 'Pending', 3),
            buildCard('Rohit', 'Pending', 3),
            buildCard('Rohit', 'Pending', 3),
            buildCard('Rohit', 'Pending', 3),
            buildCard('Rohit', 'Pending', 3),
            buildCard('Rohit', 'Pending', 3),
            buildCard('Rohit', 'Pending', 3),


          ],
          )
        
        ],
      ),
    );
  

  }

  Widget buildCard(String name,String status,int cardIndex){
    return Card(
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),elevation: 7.0,
       child: Column(children: <Widget>[
         SizedBox(height: 12.0,),
         Stack(children: <Widget>[
           Container(height: 60.0,width: 60.0,
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
           color: Colors.green,
           image: DecorationImage(image: NetworkImage('https://image.shutterstock.com/image-vector/american-football-fantasy-league-labels-260nw-308126465.jpg'))
           ),
        
           ),
           SizedBox(height: 8.0,),
       
         ],),
           SizedBox(height: 106.0,),

          Container(
            
            // margin: EdgeInsets.only(top:108),
         
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Container(
                   
                       width: 169.0,
             decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),color: Colors.green),
             child: Text('Accept',style: TextStyle(fontSize: 12,),textAlign: TextAlign.center,),
                 )
               ],
             )
           ),
       ],),
       margin: EdgeInsets.fromLTRB(10, 0,25, 10),
    );
  }
}


  // body:Column(
  //       children: <Widget>[
  //         Container(
  //           width: double.infinity,
  //           child: Card(
  //             color: Colors.blue,
  //             child:  Text('Transcation',),
  //             elevation:40 ,
  //           ),
  //         ),
        
  //         Container(
  //           width: double.infinity,
  //           child: Column(children: 
  //           transction.map((e) {
  //             return Card(
  //               child:Row(
                  
  //                 children: <Widget>[
  //                   Container(
  //                     decoration:BoxDecoration(
  //                       border: Border.all(color: Colors.purple,
  //                       width: 1),
  //                       shape: BoxShape.rectangle,

  //                     ),
  //                     padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
  //                     margin: EdgeInsets.only(right:12,left: 12,top:12,bottom: 12),
  //                     child: Text('\$ ${e.amount}',style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.purple,letterSpacing: 1),),
  //                   ),
  //                   Column(
  //                     crossAxisAlignment: CrossAxisAlignment.center
  //                     ,children: <Widget>[
  //                   Container(child: Text(e.title,style: TextStyle(fontStyle: FontStyle.normal,fontSize: 14,fontWeight: FontWeight.bold),),),
  //                   Container(margin: EdgeInsets.fromLTRB(0, 5, 0, 0),child:                     
  //                   Text(DateFormat.yMMMMd().format(e.date),style: TextStyle(color:Colors.grey),),),
  //                   ],)
                    
  //                 ],
  //               )
  //             );
  //           }).toList()
  //           ,),
  //         )
  //       ],
  //     ),
  //  // This trailing comma makes auto-formatting nicer for build methods.
  //   );