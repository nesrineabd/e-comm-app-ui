import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List my_prod =[
  {
    "id": 0,
    "name" : "FLEXIBLE 15x21 MF ODL",
    "marque": "ODL",
    "img" : "assets/images/pic0.jpg"
  },
  {
    "id": 1,
    "name" : "FLEXIBLE 15x21 FF ODL",
    "marque": "ODL",
    "img" : "assets/images/pic1.jpg"
  },
  {
    "id": 2,
    "name" : "FLEXIBLE COUDE FF",
    "marque": "FANSKI",
    "img" : "assets/images/pic2.jpg"
  },
] ;


Widget get_items_list(BuildContext context) {
  return Flexible(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: GridView.builder(
          itemCount: my_prod.length * 2,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.77,
          ),
          itemBuilder: (BuildContext context, int index) {
            return CardItem(
              i: index,
              press: () {},
            );
          }),
    ),
  );
}

class CardItem extends StatelessWidget {
  final int i;
  final VoidCallback? press;

  const CardItem({
    Key? key,
    required this.i,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String nom = (my_prod[i % my_prod.length]['name']);
    String pic = (my_prod[i % my_prod.length]['img']);
    String marque = (my_prod[i % my_prod.length]['marque']);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 9, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                // Color(0x11d0d2f5),
                Color(0x338cb3f9).withOpacity(0.1),
                Colors.white70,
              ])),
      child: InkWell(
        onTap: press,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Container(
                  width: 130,
                  height: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth, image: AssetImage(pic))),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                marque,
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
              ),
              Text(nom, style: TextStyle(fontSize: 11)),
              SizedBox(
                // height: 32,
                height: 23,
              ),
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 24,
                    alignment: Alignment.center,
                    child: Text(
                      'Voir Plus',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.9), fontSize: 12),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
