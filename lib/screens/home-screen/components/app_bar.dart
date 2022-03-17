import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

AppBar getAppBarr(BuildContext context){
  int NotificationsNumber = 0;

  return AppBar(
    elevation: 0,
    toolbarHeight: 75,
    backgroundColor: Colors.white,
    title: Container(
      // color: Colors.green,
      padding: EdgeInsets.only(left: 3),
      width: 180,
      height: 50,
      child: Image(image: AssetImage('assets/images/logo1.jpg'),fit: BoxFit.fill ),
    ),
    actions: [
      Container(
        margin: EdgeInsets.only(right: 13),
        width: 130,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Ink(
              width: 36,
              decoration: ShapeDecoration(
                shape: CircleBorder(),
                color: backgroundButtonColor,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  IconButton(
                    onPressed: (){},
                    alignment: Alignment.center,
                    icon: Icon(Icons.shopping_cart_outlined),
                    splashRadius: 24,
                    iconSize: 22,
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
                        border: Border.all(color: Colors.white)
                      ),
                      child: Center(child: Text('$NotificationsNumber', style: TextStyle(fontSize: 10),)),
                    ),
                  )

                ]
              ),
            ),
            Ink(
              width: 36,
              decoration: ShapeDecoration(
                shape: CircleBorder(),
                color: backgroundButtonColor,
              ),
              child: IconButton(
                alignment: Alignment.center,
                onPressed: (){},
                icon: Icon(Icons.menu),
                splashRadius: 24,
                iconSize: 22,
                color: Colors.black87,
              ),
            ),
            Ink(
              width: 36,
              decoration: ShapeDecoration(
                shape: CircleBorder(),
                color: backgroundButtonColor,
              ),
              child: IconButton(
                alignment: Alignment.center,
                onPressed: (){},
                icon: Icon(Icons.logout),
                splashRadius: 24,
                iconSize: 22,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      )
    ],

  );
}