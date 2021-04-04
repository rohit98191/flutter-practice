import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isloading = true;
  dynamic apidata;
  state() async {
    print('called');
    // super.initState();
    var response =
        await http.get('http://api.letsbuildthatapp.com/youtube/home_feed');
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      //  print(data['videos']);
      setState(() {
        _isloading = false;
        apidata = data['videos'];
        print(apidata);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Http Request'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                state();
              },
            )
          ],
        ),
        body: Center(
          child: _isloading
              ? CircularProgressIndicator(
                  backgroundColor: Colors.red,
                  semanticsLabel: 'Loading',
                )
              : ListView.builder(
                  itemCount: this.apidata != null ? this.apidata.length : null,
                  itemBuilder: (context, i) {
                    final videos = this.apidata[i];
                    return FlatButton(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              children: <Widget>[
                                FadeInImage.memoryNetwork(
                                    placeholder: kTransparentImage,
                                    image: videos['imageUrl']),
                                SizedBox(
                                  height: 12.0,
                                ),
                                Text(
                                  videos['name'],
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondRoute()));
                      },
                    );
                  },
                ),
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

 class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=>ThirdRoute())
            );
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

 class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
           Navigator.pop(context);
          },
          child: Text('Go Second Route!'),
        ),
      ),
    );
  }
}