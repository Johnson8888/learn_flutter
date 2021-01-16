/*
 * @Author: 弗拉德
 * @Date: 2021-01-16 10:17:36
 * @LastEditTime: 2021-01-16 11:05:28
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class ListViewReverseDemoPage extends StatefulWidget {
  @override
  _ListViewReverseDemoPage createState() => _ListViewReverseDemoPage();
}

class _ListViewReverseDemoPage extends State<ListViewReverseDemoPage> {
  var title = "reverse = false";
  var reverse = false;
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
        itemCount: 5,
        itemExtent: 60,
        reverse: reverse,
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

  List speedDialChildList() {
    final configList = [
      {"title": "reverse = true", "value": true},
      {"title": "reverse = false", "value": false},
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
            reverse = item["value"];
          });
        },
      );
      list.add(child);
    }
    return list;
  }
}
