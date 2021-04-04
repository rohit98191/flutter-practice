import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import './box.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Country _selected;
  String selected = 'my Country';
  int activeTab = 0 ; 
    String title;
    String    query;
    Color   color;
    String    subtitle;
  // int _currentIndex = 0;
  // static const List<dynamic> _widgetOptions=[
  //   Text(
  //     ''
  //   ),
  //   Containet(
  //     child:Text('')
  //     )
  // ];
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 2,
     initialIndex: 0,
     child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          leading: Icon(
            Icons.sort
          ),
          actions: <Widget>[
            Icon(Icons.notifications)
          ],
        ),
        body:TabBarView(
          children: <Widget>[
            _homeScreen(),
           
            _global()
            ],
        ),
       bottomNavigationBar: TabBar(
         tabs: <Widget>[
           Tab(
             icon: Icon(Icons.home),
           ),
            Tab(
        icon: new Icon(Icons.rss_feed),
      ),
         ],
          labelColor: Colors.yellow,
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Colors.red,
       ),
      ),
   );
  }

  Widget _homeScreen(){
   return ListView(
     children: <Widget>[
       Container(
        child: Column(
          children: <Widget>[
             _header(),
          _prevation(),
          ],
        ),
       )
     ],
   );
  }

  Widget _header(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:1.0),
        child: Container(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0)
            )
          ),
          child: Container(
            alignment: Alignment.bottomLeft,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Covid 19',style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                      Container(
                        height: 40,
                        padding: EdgeInsets.symmetric(horizontal:10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)
                        ),
                        child: CountryPicker(
                          showFlag: true,
                          onChanged: (Country country){
                            setState(() {
                              _selected = country;
                            });
                          },
                          selectedCountry: _selected,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Text('Are you feeling sick?',style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),),
                ),
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 1.0, 10.0, 10.0),
                  child: Text('If you feel sick with any covid-19 symptoms please call or sms us Immediately for help',style: TextStyle(
                    color: Colors.white,
                    height:1.6
                  ),),
                ),
              
                Container(
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: RaisedButton(
                          color: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.call,size: 20,textDirection: TextDirection.ltr,color: Colors.white,),
                              SizedBox(width: 3,),
                              Text('Call Me',style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white
                              ),)
                            ],
                          ),
                          onPressed: (){},
                        ),
                      ),
                      Container(
                        child: RaisedButton(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0,3,0,0),
                                child: Icon(Icons.sms,size: 15,color: Colors.white,),
                              ),
                              SizedBox(width: 3,),
                              Text('Sms Us',style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white
                              ),)
                            ],
                          ),
                          onPressed: (){},
                        ),
                      ),
                    ],
                  )
                )
              ],
            ),
          )
        ),
      ),
    );
  }

  Widget _prevation(){
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
            alignment: Alignment.bottomLeft,
            child: Text('Prevation:',style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 10.0,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.network('https://w2.pngwave.com/png/724/776/965/wearing-mask-coronavirus-corona-face-cartoon-cheek-nose-chin-forehead-neck-png-clip-art.png',width:150,height:150,fit: BoxFit.fitHeight,),
                Image.network('https://img2.pngio.com/transparent-fingernail-clipart-cartoon-washing-hands-png-free-cartoon-washing-hands-png-900_800.png',width:150,height:150,fit: BoxFit.fitHeight,),
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRV-EaMyohw4WKC_lTWe9tTUZZHGis-JogMIuRsLv3OSBdctSPy&usqp=CAU',width:100,height:150,fit: BoxFit.fitHeight,)
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Container(   
            height:120.0,
            width: 400.0,
            decoration: BoxDecoration(
              gradient: LinearGradient (
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [Color(0xFF56549E),Color(0xFFAEA1)],
                stops: [1,0.0]
              ),
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left:120.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Do your own test!',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0
                  ),),
                  Text('Follow the instruction to do your own test.',style: TextStyle(
                    color:Colors.white,
                    fontSize: 20
                  ),)
                ],
              ),
            ),
          )
        ],
      )
    );
  }

Widget _global(){
  return Container(
    color: Colors.deepPurple,
    child: Column(
      children: <Widget>[
        Row(
    children: <Widget>[
       Container(
         padding: EdgeInsets.only(top:20.0,left:10.0),
         child: Text('Statistics',style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
       )
    ],
        ),
        Padding(
           padding: EdgeInsets.only(left:10,right:20),
          child: Container(
            decoration: BoxDecoration(color: Colors.white10,
            borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:20,top:8,bottom: 8),
                  child: InkWell(
                    onTap: (){
                       setState(() {
                        selected = 'my Country';
                      });
                    },
                    child: Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: selected == 'my Country' ? BorderRadius.circular(20.0) : null,
                        color:selected == 'my Country'? Colors.white:null,
                      ),
                      child: Center(
                        child: Text('My Country',style: TextStyle(
                        color:selected == 'my Country' ?  Colors.black : Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                      )),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(left:30,top:8,bottom: 8),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        selected = 'global';
                      });
                    },
                    child: Container(
                        height: 35,
                         decoration: BoxDecoration(
                       borderRadius: selected !='my Country' ? BorderRadius.circular(20.0) : null,
                        color:selected !='my Country'? Colors.white : null,
                      ),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Center(
                        child: Text('Global',style: TextStyle(
                        color:selected !='my Country' ?  Colors.black : Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                      )),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 15.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: (){
                setState(() {
                  activeTab = 0;
                });
              },
              child: Text('Total',style:TextStyle(fontSize: 20.0,color:activeTab == 0 ?  Colors.white : Colors.white70,fontWeight: FontWeight.bold))),
            InkWell(
               onTap: (){
                setState(() {
                  activeTab = 1;
                });
              },
              child: Text('Today',style:TextStyle(fontSize: 20.0,color:activeTab == 1 ?Colors.white : Colors.white70,fontWeight: FontWeight.bold))),
            InkWell(
               onTap: (){
                setState(() {
                  activeTab = 2;
                });
              },
              child: Text('Yesterday',style:TextStyle(fontSize: 20.0,color:activeTab == 2 ? Colors.white:Colors.white70,fontWeight: FontWeight.bold))),
          ],
        ),
        Row(
          children: <Widget>[
            Box(
              title: 'affected',
              media: 0.41,
              color: Colors.orange[400],
              subtitle: '33,456',
            ),
             Box(
              title: 'Death',
              media: 0.41,
              color:  Colors.red[400],
              subtitle: '336,851',
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Box(
              title: 'Recovered',
              media: 0.27,
              color:  Colors.green[400],
              subtitle: '336,851',
            ),
             Box(
              title: 'Active',
              media: 0.27,
              color:  Colors.blue[200],
              subtitle: '336,851',
            ),
             Box(
              title: 'Serious',
              media: 0.27,
              color:  Color(0xFF9059FF),
              subtitle: '33',
            )
          ],
        )
      ],
    ),
  );
}



}