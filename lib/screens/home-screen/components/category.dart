import 'package:flutter/material.dart';
import 'package:plombex/screens/home-screen/components/items_list.dart';

class category_list extends StatefulWidget {
  const category_list({Key? key}) : super(key: key);

  @override
  _category_listState createState() => _category_listState();
}

class _category_listState extends State<category_list> {
  int selectedIndex = 0;
  double _fontSize = 10;
  List categoryList = [
    'ROBINETERIE',
    'POMPES ET CERVEAUX',
    'FLEXIBLES',
    'PLOMBERIE',
    'OUTILLAGE'
  ];

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      // width: size.width,
      // height: size.height,
      width: double.infinity,
      // height: 22,
      height: 500,
      child: Column(
        children: [
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: (context, index) => buildCategory(index)),
          SizedBox(
            height: 15,
          ),
          // get_items_list(context),
        ],
      ),
    );
  }

  Widget buildCategory(index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
              categoryList[index],
              style: TextStyle(
                fontSize: _fontSize,
                color: selectedIndex == index ? Colors.blue : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
