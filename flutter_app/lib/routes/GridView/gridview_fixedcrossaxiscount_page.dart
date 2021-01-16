/*
 * @Author: 弗拉德
 * @Date: 2021-01-16 10:17:36
 * @LastEditTime: 2021-01-16 16:58:18
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class GridViewFixedCrossAxisCountDemoPage extends StatefulWidget {
  @override
  _GridViewFixedCrossAxisCountDemoPageState createState() =>
      _GridViewFixedCrossAxisCountDemoPageState();
}

class _GridViewFixedCrossAxisCountDemoPageState
    extends State<GridViewFixedCrossAxisCountDemoPage> {
  var crossAxisCount = 2;
  var title = "crossAxisCount = 2";
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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: 3 / 2,
        ),
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              color: Colors.green,
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
      {
        "title": "crossAxisCount = 2",
        "value": 2,
      },
      {
        "title": "crossAxisCount = 3",
        "value": 3,
      },
      {
        "title": "crossAxisCount = 4",
        "value": 4,
      },
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
            crossAxisCount = item["value"];
          });
        },
      );
      list.add(child);
    }
    return list;
  }
}
