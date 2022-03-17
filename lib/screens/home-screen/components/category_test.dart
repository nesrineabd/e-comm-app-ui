import 'package:flutter/material.dart';
import 'package:plombex/screens/home-screen/components/items_list.dart';

import 'constants.dart';

class get_categories extends StatefulWidget {
  const get_categories({Key? key}) : super(key: key);

  @override
  _get_categoriesState createState() => _get_categoriesState();
}

class _get_categoriesState extends State<get_categories> {
  int selectedIndex = 0;
  double _fontSize = 12;
  List categoryList = [
    'ROBINETERIE',
    'POMPES ET CERVEAUX',
    'FLEXIBLES',
    'PLOMBERIE',
    'OUTILLAGE'
  ];

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            toolbarHeight: 30,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.black,
              labelColor: Colors.blue,
              tabs: <Widget>[
                Tab(
                  child: Container(
                    child: Text('PLOMBERIE', style: TextStyle(fontSize: _fontSize)),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text('CHAUFFAGE', style: TextStyle(fontSize: _fontSize)),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text('EVACUATION', style: TextStyle(fontSize: _fontSize)),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text('EVACUATION', style: TextStyle(fontSize: _fontSize)),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              get_items_list(context),
              Text('data'),
              Text('data'),
              Text('data'),
            ],
          ),
        ),
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
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Column(
          children: [
            Text(
              categoryList[index],
              style: TextStyle(
                fontSize: _fontSize,
                color: selectedIndex == index ? Colors.blue : Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getMyItems() {
    List<Widget> pages = [
      Container(
        child: Text(categoryList[selectedIndex]),
      ),
      Container(
        child: Text(categoryList[selectedIndex]),
      ),
      Container(
        child: Text(categoryList[selectedIndex]),
      ),
      Container(
        child: Text(categoryList[selectedIndex]),
      ),
      Container(
        child: Text(categoryList[selectedIndex]),
      ),
    ];

    List<Widget> pages_ = List.generate(categoryList.length,
        (index) => Container(child: get_items_list(context)));

    return Container(
      color: Colors.white,
      height: 100,
      child: IndexedStack(index: selectedIndex, children: pages),
    );
  }
}
