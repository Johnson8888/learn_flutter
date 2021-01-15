/*
 * @Author: 弗拉德
 * @Date: 2021-01-14 19:31:11
 * @LastEditTime: 2021-01-15 15:08:33
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class WrapRunAlignmentDemoPage extends StatefulWidget {
  @override
  _WrapRunAlignmentDemoPageState createState() =>
      _WrapRunAlignmentDemoPageState();
}

class _WrapRunAlignmentDemoPageState extends State<WrapRunAlignmentDemoPage> {
  var runAlignment = WrapAlignment.center;
  var title = "WrapAlignment.center";
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
            runAlignment: runAlignment,
            alignment: WrapAlignment.center,
            children: List<Widget>.generate(
              10,
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
        "value": WrapAlignment.spaceAround,
      },
      {
        "title": "WrapAlignment.spaceEvenly",
        "value": WrapAlignment.spaceEvenly,
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
            runAlignment = item["value"];
          });
        },
      );
      list.add(child);
    }
    return list;
  }
}
