/*
 * @Author: 弗拉德
 * @Date: 2021-01-15 20:51:56
 * @LastEditTime: 2021-01-16 11:50:38
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
import 'List/listview_builder_page.dart';
import 'List/listview_scrolldirection_page.dart';
import 'List/listview_reverse_page.dart';
import 'List/listview_physics_page.dart';
import 'List/listview_separated_page.dart';

class ListViewDemoPage extends StatefulWidget {
  @override
  _ListViewDemoPageState createState() => _ListViewDemoPageState();
}

class _ListViewDemoPageState extends State<ListViewDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("ListViewDemo"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemExtent: 60,
        itemBuilder: (context, index) => _actionButtons()[index],
      ),
    );
  }

  List<Widget> _actionButtons() {
    final list = [
      {"title": "listBuilder", "page": ListViewBuilderDemoPage()},
      {"title": "scrollDirection", "page": ListViewScrollDirectionDemoPage()},
      {"title": "reverse", "page": ListViewReverseDemoPage()},
      {"title": "physics", "page": ListViewPhysicesDemoPage()},
      {"title": "separated", "page": ListViewSeparatedDemoPage()},
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
