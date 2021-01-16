/*
 * @Author: 弗拉德
 * @Date: 2021-01-16 10:17:36
 * @LastEditTime: 2021-01-16 11:09:53
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class ListViewScrollDirectionDemoPage extends StatefulWidget {
  @override
  _ListViewScrollDirectionDemoPageState createState() =>
      _ListViewScrollDirectionDemoPageState();
}

class _ListViewScrollDirectionDemoPageState
    extends State<ListViewScrollDirectionDemoPage> {
  var title = "Axis.vertical";
  var axis = Axis.vertical;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        child: Icon(Icons.change_history),
        children: speedDialChildList(),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemExtent: 60,
        scrollDirection: axis,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Card(
              child: Text("$index"),
            ),
          );
        },
      ),
    );
  }

  List speedDialChildList() {
    final configList = [
      {"title": "Axis.horizontal", "value": Axis.horizontal},
      {"title": "Axis.vertical", "value": Axis.vertical},
    ];
    var list = <SpeedDialChild>[];
    for (var item in configList) {
      var child = SpeedDialChild(
        child: Icon(Icons.change_history),
        backgroundColor: Colors.green,
        label: item["title"],
        labelStyle: TextStyle(fontSize: 18.0),
        onTap: () {
          setState(() {
            title = item["title"];
            axis = item["value"];
          });
        },
      );
      list.add(child);
    }
    return list;
  }
}
