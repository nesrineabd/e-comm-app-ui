import 'package:flutter/material.dart';

import 'constants.dart';

Widget get_searchBox(BuildContext context) {
  Size size = MediaQuery.of(context).size;

  return Container(
    height: 38,
    child: Row(
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
            width: size.width * 0.82,
            decoration: BoxDecoration(
              color: backgroundButtonColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 11, color: Colors.grey),
                border: InputBorder.none,
                hintText: 'Rechercher par produit, marque, réf...'
              ),

            )
        ),
        SizedBox(width: 6,),
        Ink(
          width: 42,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            color: backgroundButtonColor,
          ),
          child: IconButton(
            onPressed: (){},
            icon: Icon(Icons.filter_alt_outlined),
            splashRadius: 20,
            iconSize: 26,
            color: Colors.black87,
          ),
        ),
      ],
    ),
  );
}
