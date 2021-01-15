/*
 * @Author: 弗拉德
 * @Date: 2021-01-15 13:47:27
 * @LastEditTime: 2021-01-15 14:56:30
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class WrapAlignmentDemoPage extends StatefulWidget {
  @override
  _WrapAlignmentDemoPageState createState() => _WrapAlignmentDemoPageState();
}

class _WrapAlignmentDemoPageState extends State<WrapAlignmentDemoPage> {
  var title = "WrapAlignment.start";
  var alignment = WrapAlignment.start;

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
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          color: Colors.red,
          child: Wrap(
            alignment: alignment,
            children: List<Widget>.generate(
              3,
              (index) => Container(
                margin: EdgeInsets.all(5),
                width: 60,
                height: 20,
                color: Colors.blue,
                child: Center(
                  child: Text("Number " + index.toString()),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List speedDialChildList() {
    final configList = [
      {
        "title": "WrapAlignment.center",
        "value": WrapAlignment.center,
      },
      {
        "title": "WrapAlignment.end",
        "value": WrapAlignment.end,
      },
      {
        "title": "WrapAlignment.start",
        "value": WrapAlignment.start,
      },
      {
        "title": "WrapAlignment.spaceBetween",
        "value": WrapAlignment.spaceBetween,
      },
      {
        "title": "WrapAlignment.spaceAround",
        "value": WrapAlignment.spaceAround
      },
      {
        "title": "WrapAlignment.spaceEvenly",
        "value": WrapAlignment.spaceEvenly
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
            alignment = item["value"];
          });
        },
      );
      list.add(child);
    }
    return list;
  }
}
