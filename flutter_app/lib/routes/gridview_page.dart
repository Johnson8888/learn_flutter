/*
 * @Author: 弗拉德
 * @Date: 2021-01-15 20:51:56
 * @LastEditTime: 2021-01-16 16:36:42
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
import 'GridView/gridview_count_page.dart';
import 'GridView/gridview_fixedcrossaxiscount_page.dart';
import 'GridView/gridview_maxcrossaxisextent_page.dart';

class GridViewDemoPage extends StatefulWidget {
  @override
  _GridViewDemoPageState createState() => _GridViewDemoPageState();
}

class _GridViewDemoPageState extends State<GridViewDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("GridViewDemo"),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemExtent: 60,
        itemBuilder: (context, index) => _actionButtons()[index],
      ),
    );
  }

  List<Widget> _actionButtons() {
    final list = [
      {
        "title": "GridView.count",
        "page": GridViewCountDemoPage(),
      },
      {
        "title": "SliverGridDelegateWithFixedCrossAxisCount",
        "page": GridViewFixedCrossAxisCountDemoPage()
      },
      {
        "title": "SliverGridDelegateWithMaxCrossAxisExtent",
        "page": GridViewMaxCrossAxisExtentDemoPage(),
      }
    ];
    return List<Widget>.generate(
      list.length,
      (index) => FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return list[index]["page"];
              },
            ),
          );
        },
        child: Card(
          child: Center(
            child: Text(list[index]["title"]),
          ),
        ),
      ),
    );
  }
}
