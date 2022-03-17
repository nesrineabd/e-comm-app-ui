import 'package:flutter/material.dart';
import 'package:plombex/screens/details-screen/components/appBar.dart';
import 'package:plombex/screens/details-screen/components/carousel_images.dart';
import 'package:plombex/screens/details-screen/components/infos.dart';
import 'package:plombex/screens/home-screen/components/constants.dart';
import 'package:carousel_pro/carousel_pro.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundButtonColor,
      appBar: get_AppBar(),
      body: getBody(context),
    );
  }
}

Widget getBody(BuildContext context) {
  return Container(
    height: double.infinity,
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        getImages(),
        SizedBox(
          height: 15,
        ),
        getInfos(),
      ],
    ),
  );
}
