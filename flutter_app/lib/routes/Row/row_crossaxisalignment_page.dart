/*
 * @Author: 弗拉德
 * @Date: 2021-01-12 08:32:59
 * @LastEditTime: 2021-01-13 11:45:25
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class RowCrossAxisalignmentDemoPage extends StatefulWidget {
  @override
  _RowCrossAxisalignmentDemoPageState createState() =>
      _RowCrossAxisalignmentDemoPageState();
}

class _RowCrossAxisalignmentDemoPageState
    extends State<RowCrossAxisalignmentDemoPage> {
  var alignment = CrossAxisAlignment.start;
  var title = "CrossAxisAlignment.start";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        child: Icon(Icons.change_history),
        children: [
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'CrossAxisAlignment.baseline',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "CrossAxisAlignment.baseline";
                alignment = CrossAxisAlignment.baseline;
              });
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'CrossAxisAlignment.stretch',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "CrossAxisAlignment.stretch";
                alignment = CrossAxisAlignment.stretch;
              });
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'CrossAxisAlignment.center',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "CrossAxisAlignment.center";
                alignment = CrossAxisAlignment.center;
              });
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'CrossAxisAlignment.end',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "CrossAxisAlignment.end";
                alignment = CrossAxisAlignment.end;
              });
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'CrossAxisAlignment.start',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "CrossAxisAlignment.start";
                alignment = CrossAxisAlignment.start;
              });
            },
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(fontSize: 17.0),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 1.0,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: alignment,
          textBaseline: TextBaseline.ideographic,
          children: List<Widget>.generate(
            4,
            (i) => Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 1.0,
                ),
              ),
              child: Image.asset(
                "images/image_demo.jpg",
                width: 50,
                height: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
