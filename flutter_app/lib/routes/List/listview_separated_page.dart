/*
 * @Author: 弗拉德
 * @Date: 2021-01-16 11:46:15
 * @LastEditTime: 2021-01-16 13:02:51
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class ListViewSeparatedDemoPage extends StatefulWidget {
  @override
  _ListViewSeparatedDemoPageState createState() =>
      _ListViewSeparatedDemoPageState();
}

class _ListViewSeparatedDemoPageState extends State<ListViewSeparatedDemoPage> {
  var title = "height 0";
  var divider = Divider(height: .0);
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
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 60,
            child: Card(
              child: Center(
                child: Text("$index"),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return divider;
        },
      ),
    );
  }

  List speedDialChildList() {
    final configList = [
      {
        "title": "height 0",
        "value": Divider(height: 10.0),
      },
      {
        "title": "thickness 10",
        "value": Divider(
          height: 10.0,
          thickness: 10,
          color: Colors.red,
        ),
      },
      {
        "title": "height 10",
        "value": Divider(
          height: 10.0,
          color: Colors.white,
        )
      },
      {
        "title": "indent 100",
        "value": Divider(
          height: 10.0,
          color: Colors.red,
          indent: 100,
        )
      },
      {
        "title": "end 100",
        "value": Divider(
          height: 10.0,
          color: Colors.red,
          endIndent: 100,
        )
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
            divider = item["value"];
          });
        },
      );
      list.add(child);
    }
    return list;
  }
}
