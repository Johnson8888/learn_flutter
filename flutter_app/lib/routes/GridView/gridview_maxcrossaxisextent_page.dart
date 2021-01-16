/*
 * @Author: 弗拉德
 * @Date: 2021-01-16 16:35:08
 * @LastEditTime: 2021-01-16 16:55:14
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class GridViewMaxCrossAxisExtentDemoPage extends StatefulWidget {
  @override
  _GridViewMaxCrossAxisExtentDemoPageState createState() =>
      _GridViewMaxCrossAxisExtentDemoPageState();
}

class _GridViewMaxCrossAxisExtentDemoPageState
    extends State<GridViewMaxCrossAxisExtentDemoPage> {
  var extent = 100.0;
  var title = "maxCrossAxisExtent = 100";
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
        title: Text("MaxCrossAxisExtent"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: extent,
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
        "title": "maxCrossAxisExtent = 100",
        "value": 100.0,
      },
      {
        "title": "maxCrossAxisExtent = 200",
        "value": 200.0,
      },
      {
        "title": "maxCrossAxisExtent = 300",
        "value": 300.0,
      },
      {
        "title": "maxCrossAxisExtent = 400",
        "value": 400.0,
      }
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
            extent = item["value"];
          });
        },
      );
      list.add(child);
    }
    return list;
  }
}
