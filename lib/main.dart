import 'package:flutter/material.dart';
import 'package:plombex/screens/details-screen/details_screen.dart';
import 'package:plombex/screens/home-screen/main-screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plombex',
      home: DetailsScreen(),
    );
  }
}
