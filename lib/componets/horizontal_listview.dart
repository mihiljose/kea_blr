import 'package:flutter/material.dart';
import 'package:kea_blr/pages/gallery.dart';
import 'package:kea_blr/pages/activities.dart';
import 'package:kea_blr/pages/news.dart';
import 'package:kea_blr/pages/contact.dart';
import 'package:kea_blr/pages/login.dart';
import 'package:kea_blr/pages/events.dart';
import 'package:kea_blr/pages/about.dart';


class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[

          InkWell(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>  loginPage())
              );
            },
            child: Category(
              image_location: 'images/categories/register.png',
              image_caption: 'REGISTER',
            ),
          ),

          InkWell(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>  keaGallery())
              );
            },
            child: Category(
              image_location: 'images/categories/gallery.png',
              image_caption: 'GALLERY',
            ),
          ),

          InkWell(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>  eventsPage())
              );
            },
            child: Category(
              image_location: 'images/categories/events.png',
              image_caption: 'EVENTS',
            ),
          ),

          InkWell(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> activities())
              );
            },
            child: Category(
              image_location: 'images/categories/activities.png',
              image_caption: 'ACTIVITIES',
            ),
          ),

          InkWell(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> news())
              );
            },
            child: Category(
              image_location: 'images/categories/news.png',
              image_caption: 'NEWS',
            ),
          ),


          InkWell(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> contact())
              );
            },
            child: Category(
              image_location: 'images/categories/contact.png',
              image_caption: 'CONTACT',

            ),
          ),

          InkWell(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> aboutKea())
              );
            },
            child: Category(
              image_location: 'images/categories/about.png',
              image_caption: 'ABOUT KEA',

            ),
          ),


        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),

        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 90.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: new TextStyle(fontSize: 7.5),),
            )
          ),
        ),

    );
  }
}




