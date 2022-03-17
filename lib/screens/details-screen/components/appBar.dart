import 'package:flutter/material.dart';

AppBar get_AppBar() {
  return AppBar(
    toolbarHeight: 50,
    backgroundColor: Colors.white,
    elevation: 0,
    actions: [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Stack(alignment: Alignment.center, children: [
          IconButton(
            onPressed: () {},
            alignment: Alignment.center,
            icon: Icon(Icons.shopping_cart),
            splashRadius: 24,
            iconSize: 28,
            color: Colors.black87,
          ),
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.topRight,
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepOrange,
                  border: Border.all(color: Colors.white)),
              child: Center(
                  child: Text(
                '0',
                style: TextStyle(fontSize: 10),
              )),
            ),
          )
        ]),
      ),
    ],
  );
}
