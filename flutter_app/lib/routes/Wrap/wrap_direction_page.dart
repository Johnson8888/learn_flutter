/*
 * @Author: 弗拉德
 * @Date: 2021-01-15 13:47:27
 * @LastEditTime: 2021-01-15 14:19:59
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class WrapDirectionDemoPage extends StatefulWidget {
  @override
  _WrapDirectionDemoPageState createState() => _WrapDirectionDemoPageState();
}

class _WrapDirectionDemoPageState extends State<WrapDirectionDemoPage> {
  var title = "Axis.horizontal";
  var direction = Axis.horizontal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        child: Icon(Icons.change_history),
        children: [
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'Axis.horizontal',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "Axis.horizontal";
                direction = Axis.horizontal;
              });
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'Axis.vertical',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "Axis.vertical";
                direction = Axis.vertical;
              });
            },
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(title),
      ),
      body: Center(
        child: Wrap(
          direction: direction,
          children: List<Widget>.generate(
            10,
            (index) => Container(
              margin: EdgeInsets.all(5),
              width: 75,
              height: 30,
              color: Colors.red,
              child: Center(
                child: Text(
                  "Number " + index.toString(),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
