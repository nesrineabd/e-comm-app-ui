import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';

Widget get_categoryFav(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.only(right: 3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //Espace Pub
        favCatButton(
          size: size,
          name: 'Espace Pub',
          icon_: Icons.campaign,
          pad: 29.0,
        ),
        SizedBox(
          width: 2,
        ),
        //Plus vendus
        favCatButton(
          size: size,
          name: 'Les Plus Vendus',
          icon_: Icons.star,
          pad: 18.0,
        ),

        Container(
          padding: EdgeInsets.only(left: 3),
          child: Row(
            children: [
              Container(
                width: 36,
                child: IconButton(
                  splashRadius: 10,
                  splashColor: Colors.transparent,
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/list_view.svg'),
                ),
              ),
              Container(
                width: 40,
                child: IconButton(
                  splashRadius: 10,
                  splashColor: Colors.transparent,
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/grid_view_outlined.svg'),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class favCatButton extends StatelessWidget {
  final String name;
  final IconData icon_;
  final pad;

  const favCatButton({
    Key? key,
    required this.size,
    required this.name,
    required this.icon_,
    this.pad,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    //the color of the container is covering the ripple effect
    return Material(
      color: backgroundButtonColor,
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(left: pad),
            width: size.width * 0.35,
            height: 28,
            child: Row(
              children: [
                Icon(
                  icon_,
                  color: Colors.blue,
                  size: 18,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          )
      ),
    );
  }
}
