import 'package:flutter/material.dart';

class HomeDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:15.0,left:12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: (){},
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(Icons.arrow_drop_down,color: Colors.white,),
                      Icon(Icons.menu,color: Colors.white,)
                    ],
                  ),
                )
              ],
            ),
          ),
           SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left:20.0),
            child: RichText(
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                children:[
                  TextSpan(
                    text: 'Healthy',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white
                    )
                  ),
                  TextSpan(
                    text: ' Food',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                    )
                  )
                ]
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: MediaQuery.of(context).size.height - 125.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(70)
              ),
            ),
           child:ListView(
             primary: false,
             padding: EdgeInsets.only(left:25,right: 20),
             children: <Widget>[
               Padding(padding: EdgeInsets.only(top:30.0),),
               Container(
                 padding: EdgeInsets.only(left:40.0),
                 child:Column(
                   children: <Widget>[
                     BuildRecepies(imageUrl:'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/129848472/original/34760c0fe9d6ee04c5090051a5cd6cfae3409447/shoot-quality-food-photography-for-you.jpg' ,name: 'Salmon' ,money: '25' ,),
                     SizedBox(height: 20,),
                     BuildRecepies(imageUrl:'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/129848472/original/34760c0fe9d6ee04c5090051a5cd6cfae3409447/shoot-quality-food-photography-for-you.jpg' ,name: 'Salmon' ,money: '25' ,),
                     SizedBox(height: 20,),
                     BuildRecepies(imageUrl:'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/129848472/original/34760c0fe9d6ee04c5090051a5cd6cfae3409447/shoot-quality-food-photography-for-you.jpg' ,name: 'Salmon' ,money: '25' ,),
                      SizedBox(height: 20,),
                     BuildRecepies(imageUrl:'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/129848472/original/34760c0fe9d6ee04c5090051a5cd6cfae3409447/shoot-quality-food-photography-for-you.jpg' ,name: 'Salmon' ,money: '25' ,),
                      SizedBox(height: 20,),
                     BuildRecepies(imageUrl:'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/129848472/original/34760c0fe9d6ee04c5090051a5cd6cfae3409447/shoot-quality-food-photography-for-you.jpg' ,name: 'Salmon' ,money: '25' ,),
                      SizedBox(height: 20,),
                     BuildRecepies(imageUrl:'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/129848472/original/34760c0fe9d6ee04c5090051a5cd6cfae3409447/shoot-quality-food-photography-for-you.jpg' ,name: 'Salmon' ,money: '25' ,),
                      SizedBox(height: 20,),
                     BuildRecepies(imageUrl:'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/129848472/original/34760c0fe9d6ee04c5090051a5cd6cfae3409447/shoot-quality-food-photography-for-you.jpg' ,name: 'Salmon' ,money: '25' ,),
                      SizedBox(height: 20,),
                     BuildRecepies(imageUrl:'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/129848472/original/34760c0fe9d6ee04c5090051a5cd6cfae3409447/shoot-quality-food-photography-for-you.jpg' ,name: 'Salmon' ,money: '25' ,),
                      SizedBox(height: 20,),
                     BuildRecepies(imageUrl:'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/129848472/original/34760c0fe9d6ee04c5090051a5cd6cfae3409447/shoot-quality-food-photography-for-you.jpg' ,name: 'Salmon' ,money: '25' ,),
                      SizedBox(height: 20,),
                     BuildRecepies(imageUrl:'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/129848472/original/34760c0fe9d6ee04c5090051a5cd6cfae3409447/shoot-quality-food-photography-for-you.jpg' ,name: 'Salmon' ,money: '25' ,),
                      SizedBox(height: 20,),
                     BuildRecepies(imageUrl:'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/129848472/original/34760c0fe9d6ee04c5090051a5cd6cfae3409447/shoot-quality-food-photography-for-you.jpg' ,name: 'Salmon' ,money: '25' ,),
                      SizedBox(height: 20,),
                     BuildRecepies(imageUrl:'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/129848472/original/34760c0fe9d6ee04c5090051a5cd6cfae3409447/shoot-quality-food-photography-for-you.jpg' ,name: 'test' ,money: '25' ,),
                   ],
                 )
               )
             ],
           ),
          )
        ],
      )
    );
  }
  
}

class BuildRecepies extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String money;
  BuildRecepies({this.imageUrl,this.name,this.money});
  @override
  Widget build(BuildContext context) {
    return InkWell(
                   onTap: (){
                   },
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Hero(
                         tag:'',
                         child: Image.network(imageUrl,fit:BoxFit.cover,width: 40,height: 40,),
                       ),
                      //  SizedBox(width: 20.0,),
                       Column(children: <Widget>[
                         Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                         Text('\$ $money',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),)
                       ],),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color:Colors.black
                        ),
                        child: InkWell(onTap: (){},child: Container(child: Icon(Icons.add,color: Colors.white,))),
                      )
                     ],
                   ),
                 ) ;
  }
}