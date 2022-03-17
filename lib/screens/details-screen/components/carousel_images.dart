import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:plombex/info_list_prod.dart';

Widget getImages() {
  return Flexible(
    child: Container(
      width: double.infinity,
      height: 345,
      child: Carousel(
        boxFit: BoxFit.cover,
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 6.0,
        dotColor: Colors.grey[300],
        dotBgColor: Colors.transparent,
        dotIncreaseSize: 1.5,
        dotIncreasedColor: Colors.blue,
        images: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(right: 25, left: 25, bottom: 30),
            child: Image(
              image: AssetImage(goods[3]['img']),
              fit: BoxFit.contain,
            ),
          ),
          Container(
            color: Colors.blueGrey,
            padding: EdgeInsets.only(right: 25, left: 25, bottom: 30),
            child: Image(
              image: AssetImage(goods[3]['img']),
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    ),
  );
}
