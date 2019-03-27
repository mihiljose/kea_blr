import 'package:flutter/material.dart';
import 'package:kea_blr/pages/annualMeet.dart';

class eventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        //elevation: 0.1,
        iconTheme: new IconThemeData(color: Colors.green),
        backgroundColor: Colors.white,
        title:new Image.asset('images/logo.png', fit: BoxFit.cover),

      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("All Events",style: TextStyle(fontSize: 32,),),
          ),
          InkWell(onTap: (){Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>  kea2018())
          );}
              ,child: itemCard('KEA Annual Meet - 2018', 'images/itemcard/2018.png', false,'This year, the Annual meet is proposed to be held on Sunday, the 28th October 2018 at the NIMHANS Convention Centre from 8.00AM till 6.30PM This year, we will have Dr. Shashi Tharoor, delivering the key note address and Dr. Tessy Thomas (DG- Aero, DRDO) as Chief Guest...')),

          InkWell(onTap: (){Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>  kea2017())
          );},
              child: itemCard('KEA Annual Day - 2017', 'images/itemcard/2017.jpg', false,'With this fantastic history behind us, as we move into our 25th year of existence...')),

          itemCard('Annual Day 2016 (Get-Together)', 'images/itemcard/2016.jpg', false,'KEA being an organisation that is existing to connect Kerala Engineers and create synergy among them, has been organising the annual get together every year for the last 25 years.'),


        ],
      ),
    );
  }

  Widget itemCard(String title, String imgPath, bool isFavorite,String description) {
    return Container(
      height: 200.0,
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
                  //SizedBox(width: 5.0),
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
