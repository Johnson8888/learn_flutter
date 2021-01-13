/*
 * @Author: 弗拉德
 * @Date: 2021-01-12 08:32:59
 * @LastEditTime: 2021-01-13 11:44:05
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class RowMainAxisalignmentDemoPage extends StatefulWidget {
  @override
  _RowMainAxisalignmentDemoPageState createState() =>
      _RowMainAxisalignmentDemoPageState();
}

class _RowMainAxisalignmentDemoPageState
    extends State<RowMainAxisalignmentDemoPage> {
  var alignment = MainAxisAlignment.start;
  var title = "MainAxisalignment.start";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          SpeedDial(child: Icon(Icons.change_history), children: [
        SpeedDialChild(
          child: Icon(Icons.change_history),
          backgroundColor: Colors.green,
          label: 'MainAxisalignment.spaceEvenly',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () {
            setState(() {
              title = "MainAxisalignment.spaceEvenly";
              alignment = MainAxisAlignment.spaceEvenly;
            });
          },
        ),
        SpeedDialChild(
          child: Icon(Icons.change_history),
          backgroundColor: Colors.green,
          label: 'MainAxisAlignment.spaceAround',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () {
            setState(() {
              title = "MainAxisalignment.spaceAround";
              alignment = MainAxisAlignment.spaceAround;
            });
          },
        ),
        SpeedDialChild(
          child: Icon(Icons.change_history),
          backgroundColor: Colors.green,
          label: 'MainAxisAlignment.spaceBetween',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () {
            setState(() {
              title = "MainAxisalignment.spaceBetween";
              alignment = MainAxisAlignment.spaceBetween;
            });
          },
        ),
        SpeedDialChild(
          child: Icon(Icons.change_history),
          backgroundColor: Colors.green,
          label: 'MainAxisalignment.center',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () {
            setState(() {
              title = "MainAxisalignment.center";
              alignment = MainAxisAlignment.center;
            });
          },
        ),
        SpeedDialChild(
          child: Icon(Icons.change_history),
          backgroundColor: Colors.green,
          label: 'MainAxisalignment.end',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () {
            setState(() {
              title = "MainAxisalignment.end";
              alignment = MainAxisAlignment.end;
            });
          },
        ),
        SpeedDialChild(
          child: Icon(Icons.change_history),
          backgroundColor: Colors.green,
          label: 'MainAxisalignment.start',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: () {
            setState(() {
              title = "MainAxisalignment.start";
              alignment = MainAxisAlignment.start;
            });
          },
        ),
      ]),
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
        )),
        child: Row(
          // 如果把 mainAxisSize改为 MainAxisSize.min，局部将不会再发生变化
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: alignment,
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
