/*
 * @Author: 弗拉德
 * @Date: 2021-01-16 10:17:36
 * @LastEditTime: 2021-01-16 11:41:16
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class ListViewPhysicesDemoPage extends StatefulWidget {
  @override
  _ListViewPhysicesDemoPageState createState() =>
      _ListViewPhysicesDemoPageState();
}

class _ListViewPhysicesDemoPageState extends State<ListViewPhysicesDemoPage> {
  var title = "NeverScrollableScrollPhysics";
  ScrollPhysics physics = NeverScrollableScrollPhysics();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemExtent: 60,
        physics: physics,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Card(
              child: Center(
                child: Text("$index"),
              ),
            ),
          );
        },
      ),
    );
  }
}
