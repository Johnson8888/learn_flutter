/*
 * @Author: 弗拉德
 * @Date: 2021-01-14 19:31:11
 * @LastEditTime: 2021-01-15 15:30:58
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class WrapSpcaingDemoPage extends StatefulWidget {
  @override
  _WrapSpcaingDemoPageState createState() => _WrapSpcaingDemoPageState();
}

class _WrapSpcaingDemoPageState extends State<WrapSpcaingDemoPage> {
  @override
  var title = "spacing:10 & runSpaing:40";
  var spacing = 10.0;
  var runSpacing = 40.0;
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
            spacing: spacing,
            runSpacing: runSpacing,
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
        "title": "spacing:10 & runSpaing:40",
        "spacing": 10.0,
        "runSpacing": 40.0,
      },
      {
        "title": "spacing:40 & runSpaing:40",
        "spacing": 40.0,
        "runSpacing": 40.0,
      },
      {
        "title": "spacing:40 & runSpaing:10",
        "spacing": 40.0,
        "runSpacing": 10.0,
      },
      {
        "title": "spacing:10 & runSpaing:10",
        "spacing": 10.0,
        "runSpacing": 10.0,
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
            spacing = item["spacing"];
            runSpacing = item["runSpacing"];
          });
        },
      );
      list.add(child);
    }
    return list;
  }
}
