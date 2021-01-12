/*
 * @Author: 弗拉德
 * @Date: 2021-01-12 08:32:59
 * @LastEditTime: 2021-01-12 17:37:08
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class ColumnCrossAxisalignmentDemoPage extends StatefulWidget {
  @override
  _ColumnCrossAxisalignmentDemoPageState createState() =>
      _ColumnCrossAxisalignmentDemoPageState();
}

class _ColumnCrossAxisalignmentDemoPageState
    extends State<ColumnCrossAxisalignmentDemoPage> {
  var alignment = CrossAxisAlignment.start;
  var title = "CrossAxisAlignment.start";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        child: Icon(Icons.change_history),
        children: [
          // SpeedDialChild(
          //   child: Icon(Icons.change_history),
          //   backgroundColor: Colors.green,
          //   label: 'CrossAxisAlignment.baseline',
          //   labelStyle: TextStyle(fontSize: 18.0),
          //   onTap: () {
          //     setState(() {
          //       title = "CrossAxisAlignment.baseline";
          //       alignment = CrossAxisAlignment.baseline;
          //     });
          //   },
          // ),

          /* CrossAxisAlignment.baseline 是水平基线对齐，在Column 中没有效果，主要用于Row控件 */

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
      body: Center(
        child: Container(
          width: 120,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 1.0,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: alignment,
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
                  width: 80,
                  height: 80,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
