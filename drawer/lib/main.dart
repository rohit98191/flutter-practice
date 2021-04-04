import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
 static bool isExpanded = false;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }
   static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];
  @override
  Widget build(BuildContext context) {

    return MaterialApp( 
      title: 'Drawer',
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Drawer Example'),
          leading: Container(
            margin: EdgeInsets.all(20),
            child: InkWell(
              onTap: (){
               _scaffoldKey.currentState.openDrawer();
              },
              child: Image(
                image: AssetImage("assets/images/logo.png"),
                width: 20.0,
                height: 120.0,
              )
            ),
          ),
        ),
        drawer: Drawer(elevation: defaultTargetPlatform==TargetPlatform.iOS ? null :5,
        child: ListView(
          addRepaintBoundaries: true,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('rohit.singh@mailinator.com'),
              accountName: Text('Rohit'),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              currentAccountPicture: CircleAvatar(backgroundColor: defaultTargetPlatform==TargetPlatform.iOS ?Colors.teal :Colors.tealAccent,
              foregroundColor: Colors.black,
              child: Image.asset('assets/images/logo.png',width: 50.0,),
              ),
            ),
            
            ListTile(
              title: Text('Demo 1'),
              trailing: Icon(Icons.account_circle),
            ),
            ListTile(
              title: Text('Demo 2'),
              trailing: Icon(Icons.account_circle),
            ),
            ExpansionTile(
              initiallyExpanded:MyApp.isExpanded,
              title: Text('Demo 3',
              style: TextStyle(
                color: MyApp.isExpanded ? Colors.teal :null
              ),
              ),
              // trailing: Icon(Icons.arrow_drop_up),
              trailing: MyApp.isExpanded ? Icon(Icons.account_circle) : Icon(Icons.account_box),
              children: <Widget>[
                ListTile(title: Text('Sub Demo'),),
                ListTile(title: Text('Sub Demo'),),
                ListTile(title: Text('Sub Demo'),),
              ],

        onExpansionChanged: (value)=>setState(()=>MyApp.isExpanded=value),
            ),
            ListTile(
              title: Text('Demo 3'),
            ),
          ],
        ),
        ),

      // body: _widgetOptions.elementAt(_selectedIndex),
     body:Container(
  decoration: ShapeDecoration(
    color: Colors.white,
    shape: Border.all(
      color: Colors.red,
      width: 8.0,
    ) + Border.all(
      color: Colors.green,
      width: 8.0,
    ) + Border.all(
      color: Colors.blue,
      width: 8.0,
    )+ Border.all(
      color: Colors.brown,
      width:8.0
    )
    ,
  ),
  child: const Text('RGB', textAlign: TextAlign.center),
),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
      ),
      );  
  }
}


