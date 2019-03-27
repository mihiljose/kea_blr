import 'package:flutter/material.dart';
import 'package:kea_blr/componets/carousel.dart';
import 'package:kea_blr/componets/drawer.dart';
import 'package:kea_blr/componets/horizontal_listview.dart';
import 'package:kea_blr/pages/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kea_blr/pages/login.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([ DeviceOrientation.portraitUp ]);
    return MaterialApp(
      title: 'kea',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/landingpage': (BuildContext context)=>MyHomePage(),
        '/signup': (BuildContext context)=>signUpPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 180.0,
      child: mycarousel(),
    );

    return Scaffold(
        appBar: new AppBar(
        //elevation: 0.1,
        iconTheme: new IconThemeData(color: Colors.green),
    backgroundColor: Colors.white,
    title:new Image.asset('images/logo.png', fit: BoxFit.cover),

    actions: <Widget>[
    new IconButton(
    icon: Icon(
    Icons.search,
    color: Colors.green,
    ),
    onPressed: () {
      showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return new Container(
                child: new Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: new Text(
                        'Made by Mihil Jose for the '
                            'Kerala Engineers Association Bengalaru ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0))));
          });
    }),

    ],
    ),
    drawer: myDrawer(),

    body: ListView(
    children: <Widget>[
    //image carousel begins here
    image_carousel,

    HorizontalList(),

    /*  RaisedButton(
        onPressed: (){
          FirebaseAuth.instance.signOut().then((value){
            Navigator.of(context).pushReplacementNamed('/landingpage');
          }).catchError((e){
            print(e);
          });
        },
      )*/
    itemCard('KEA - Kerala \nEngineers \nAssociation', 'images/itemcard/1.jpg', false,'With this fantastic history behind us, as we move into our 25th year of existence...'),

    itemCard('The BBC & \nthe Annual Day', 'images/itemcard/2.jpg', false,'This year, KEA is holding the Annual meet on Saturday, the 11th November 2017 at East Cultural Association, 100 Feet Road, Indiranagar, Bangalore. The program starts at 3.00 PM. and includes Inter –alumni competition, Family events, Musical fare by renowned singer Vinayachandran...'),


      InkWell(
        onTap: (){
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=> loginPage())
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.yellow,
            height: 50.0,
            child: Center(child: Text("Join KEA Bengaluru",style: TextStyle(fontSize: 18.0),)),
          ),
        ),
      ),




    ],
    ),
    );

  }
  Widget itemCard(String title, String imgPath, bool isFavorite,String description) {
    return Container(
      height: 160.0,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 150.0,
              height: 150.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.contain)),
            ),
          ),
          //SizedBox(width: 10.0),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                    child: Text(
                      title,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 45.0),
                 /* Material(
                    elevation: isFavorite ? 0.0 : 2.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: isFavorite
                              ? Colors.grey.withOpacity(0.2)
                              : Colors.white),
                      child: Center(
                        child: isFavorite
                            ? Icon(Icons.favorite_border)
                            : Icon(Icons.favorite, color: Colors.red),
                      ),
                    ),
                  )*/
                ],
              ),
              SizedBox(height: 5.0),
              Container(
                width: 175.0,
                child: Text(
                  description,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      color: Colors.grey,
                      fontSize: 12.0),
                ),
              ),
              SizedBox(height: 5.0),

            ],
          )
        ],
      ),
    );
  }


}


