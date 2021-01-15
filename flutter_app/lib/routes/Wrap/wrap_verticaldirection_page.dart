/*
 * @Author: 弗拉德
 * @Date: 2021-01-14 19:31:11
 * @LastEditTime: 2021-01-15 15:18:44
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class WrapVerticalDirectionDemoPage extends StatefulWidget {
  @override
  _WrapVerticalDirectionDemoPageState createState() =>
      _WrapVerticalDirectionDemoPageState();
}

class _WrapVerticalDirectionDemoPageState
    extends State<WrapVerticalDirectionDemoPage> {
  var verticalDirection = VerticalDirection.down;
  var title = "VerticalDirection.down";
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
            verticalDirection: verticalDirection,
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
      {"title": "VerticalDirection.down", "value": VerticalDirection.down},
      {"title": "VerticalDirection.up", "value": VerticalDirection.up},
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
            verticalDirection = item["value"];
          });
        },
      );
      list.add(child);
    }
    return list;
  }
}
