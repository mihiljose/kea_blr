import 'package:flutter/material.dart';
import 'package:flutter_scroll_gallery/flutter_scroll_gallery.dart';

class keaGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: new AppBar(
          elevation: 0.1,
          iconTheme: new IconThemeData(color: Colors.green),
          backgroundColor: Colors.white,
          title:new Image.asset('images/logo.png', fit: BoxFit.cover),),
          body:  Container(
    child: ScrollGallery(
    <ImageProvider>[
        new NetworkImage("http://keablr.org/images/pro/g4b.jpg"),
    new NetworkImage("http://keablr.org/images/pro/g5b.jpg"),
    new NetworkImage("http://keablr.org/images/pro/g6b.jpg"),
    new NetworkImage("http://keablr.org/images/pro/g7b.jpg"),
    new NetworkImage("http://keablr.org/images/pro/g8b.jpg"),
    new NetworkImage("http://keablr.org/images/pro/g9b.jpg"),
    new NetworkImage("http://keablr.org/images/pro/g10b.jpg"),
    new NetworkImage("http://keablr.org/images/pro/g11b.jpg"),
     new NetworkImage("http://keablr.org/images/pro/g12b.jpg"),
    new NetworkImage("http://keablr.org/images/pro/g13b.jpg"),
    new NetworkImage("http://keablr.org/images/pro/g14b.jpg"),
    new NetworkImage("http://keablr.org/images/pro/g15b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g16b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g17b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g18b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g19b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g20b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g21b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g22b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g23b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g24b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g25b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g26b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g27b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g28b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g29b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g30b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g31b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g32b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g33b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g34b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g35b.jpg"),
        NetworkImage("http://keablr.org/images/pro/g36b.jpg"),

    ],
    interval: new Duration(seconds: 3),),
    ),
    ) ;



  }
}



