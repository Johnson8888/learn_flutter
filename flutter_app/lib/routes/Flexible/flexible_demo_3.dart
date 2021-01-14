/*
 * @Author: 弗拉德
 * @Date: 2021-01-13 19:48:36
 * @LastEditTime: 2021-01-14 11:20:21
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter/rendering.dart';

class FlexibleDemo3Page extends StatefulWidget {
  @override
  _FlexibleDemo3PageState createState() => _FlexibleDemo3PageState();
}

class _FlexibleDemo3PageState extends State<FlexibleDemo3Page> {
  @override
  var title = "flex = 0";
  var flex = 0;
  @override
  Widget build(BuildContext context) {
    // debugPaintSizeEnabled = true;
    return Scaffold(
      floatingActionButton: SpeedDial(
        child: Icon(Icons.change_history),
        children: [
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'flex = 2',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "flex = 2";
                flex = 2;
              });
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'flex = 0',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "flex = 0";
                flex = 0;
              });
            },
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              child: Image.asset("images/image_demo.jpg"),
              flex: 1,
            ),
            Flexible(
              child: Image.asset("images/image_demo.jpg"),
              flex: 2,
            ),
            Flexible(
              child: Image.asset("images/image_demo.jpg"),
              flex: flex,
            ),
          ],
        ),
      ),
    );
  }
}
