import 'package:covid/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//  static final  Map<int, Color> color = {
// 50: Color.fromRGBO(255, 92, 87, .1),
// 100: Color.fromRGBO(255, 92, 87, .2),
// 200: Color.fromRGBO(255, 92, 87, .3),
// 300: Color.fromRGBO(255, 92, 87, .4),
// 400: Color.fromRGBO(255, 92, 87, .5),
// 500: Color.fromRGBO(255, 92, 87, .6),
// 600: Color.fromRGBO(255, 92, 87, .7),
// 700: Color.fromRGBO(255, 92, 87, .8),
// 800: Color.fromRGBO(255, 92, 87, .9),
// 900: Color.fromRGBO(255, 92, 87, 1),
// };

// MaterialColor colorCustom = MaterialColor(0xFFFF5C57, color);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch:Colors.blue,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    home: HomeScreen()
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
