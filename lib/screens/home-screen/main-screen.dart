import 'package:flutter/material.dart';
import 'package:plombex/screens/home-screen/components/app_bar.dart';
import 'package:plombex/screens/home-screen/components/category_test.dart';
import 'package:plombex/screens/home-screen/components/items_list.dart';

import 'components/category.dart';
import 'components/category_fav.dart';
import 'components/search_box.dart';

// Left :
//          - les onglets te3 categorie
//          - drawer

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: getAppBarr(context),
      body: getBody(context),
      );
  }
}

Widget getBody(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12),
    width: double.infinity,
    child: Column(
      children: [
        get_searchBox(context),

        SizedBox(
          height: 3,
        ),

        get_categoryFav(context),

        SizedBox(
          height: 3,
        ),

        get_categories(),

        // category_list(),

        // SizedBox( height: 8),

        // get_items_list(context),
      ],
    ),
  );
}
