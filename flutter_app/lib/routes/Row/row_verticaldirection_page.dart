/*
 * @Author: 弗拉德
 * @Date: 2021-01-12 08:32:59
 * @LastEditTime: 2021-01-13 13:36:32
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class RowVerticalDirectionDemoPage extends StatefulWidget {
  @override
  _RowVerticalDirectionDemoPageState createState() =>
      _RowVerticalDirectionDemoPageState();
}

class _RowVerticalDirectionDemoPageState
    extends State<RowVerticalDirectionDemoPage> {
  var alignment = CrossAxisAlignment.start;
  var verticalDirection = VerticalDirection.down;

  var title = "down & start";

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        child: Icon(Icons.change_history),
        children: [
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'up & end',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "up & end";
                verticalDirection = VerticalDirection.up;
                alignment = CrossAxisAlignment.end;
              });
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'up & start',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "up & start";
                verticalDirection = VerticalDirection.up;
                alignment = CrossAxisAlignment.start;
              });
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'down & end',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "down & end";
                verticalDirection = VerticalDirection.down;
                alignment = CrossAxisAlignment.end;
              });
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'down & start',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "down & start";
                verticalDirection = VerticalDirection.down;
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
        height: 120,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 1.0,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: alignment,
          verticalDirection: verticalDirection,
          children: List<Widget>.generate(
            4,
            (i) => Container(
              width: 50,
              height: 50,
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
