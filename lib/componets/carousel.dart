import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class mycarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Carousel(
      boxFit: BoxFit.fill,
      images: [
        AssetImage('images/slides/slide1.png'),
        AssetImage('images/slides/slide2.png'),
        AssetImage('images/slides/slide3.png'),

      ],
      autoplay: true,
      animationCurve: Curves.ease,
      animationDuration: Duration(milliseconds: 2000),
      dotSize: 4.0,
      dotBgColor: Colors.white10,
      dotColor: Colors.green,
      autoplayDuration: Duration(milliseconds: 2000),
      indicatorBgPadding: 5.0,
    );

  }
}
