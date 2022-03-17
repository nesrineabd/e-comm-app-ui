import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plombex/info_list_prod.dart';
import 'package:plombex/screens/home-screen/components/constants.dart';

Widget getInfos() {
  String nom = goods[3]['name'];
  String ref = goods[3]['ref'];
  String marque = goods[3]['marque'];
  String apropos = goods[3]['a propos'];

  return Container(
    padding: EdgeInsets.only(right: 20, left: 20, top: 35),
    width: double.infinity,
    height: 410,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(30)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          nom,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Réf. $ref',
          style: TextStyle(fontSize: 11),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          marque,
          style: TextStyle(fontSize: 11, color: Colors.black54),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'A propos du produit ',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        if (apropos == true)
          Text(apropos)
        else
          Text("Ce produit est sans détails"),
        SizedBox(
          height: 150,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 45,
                child: Material(
                  shape: CircleBorder(),
                  color: backgroundButtonColor,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.west),
                    splashRadius: 24,
                    iconSize: 20,
                  ),
                ),
              ),
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 220,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text(
                      'AJOUTER AU PANIER',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              ),
              Container(
                width: 45,
                child: Material(
                  shape: CircleBorder(),
                  color: backgroundButtonColor,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share_outlined),
                    splashRadius: 24,
                    iconSize: 20,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
