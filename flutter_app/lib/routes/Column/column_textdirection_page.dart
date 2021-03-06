/*
 * @Author: 弗拉德
 * @Date: 2021-01-12 08:32:59
 * @LastEditTime: 2021-01-12 15:03:05
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class ColumnTextDirectionDemoPage extends StatefulWidget {
  @override
  _ColumnTextDirectionDemoPageState createState() =>
      _ColumnTextDirectionDemoPageState();
}

class _ColumnTextDirectionDemoPageState
    extends State<ColumnTextDirectionDemoPage> {
  var alignment = CrossAxisAlignment.start;
  var textDirection = TextDirection.ltr;
  var title = "ltr & start";
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        child: Icon(Icons.change_history),
        children: [
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'rtl & end',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "rtl & end";
                textDirection = TextDirection.rtl;
                alignment = CrossAxisAlignment.end;
              });
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'rtl & start',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "rtl & start";
                textDirection = TextDirection.rtl;
                alignment = CrossAxisAlignment.start;
              });
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'ltr & end',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "ltr & end";
                textDirection = TextDirection.ltr;
                alignment = CrossAxisAlignment.end;
              });
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'ltr & start',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "ltr & start";
                textDirection = TextDirection.ltr;
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
            textDirection: textDirection,
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
