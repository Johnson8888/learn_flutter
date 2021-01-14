/*
 * @Author: 弗拉德
 * @Date: 2021-01-13 19:48:36
 * @LastEditTime: 2021-01-13 20:29:59
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class FlexibleDemo1Page extends StatefulWidget {
  @override
  _FlexibleDemo1PageState createState() => _FlexibleDemo1PageState();
}

class _FlexibleDemo1PageState extends State<FlexibleDemo1Page> {
  var f1 = 1;
  var f2 = 2;
  var f3 = 3;
  var title = "flex 1 2 3";
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
            label: 'flex default',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                f1 = f2 = f3 = 1;
                title = "flex default";
              });
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'flex 1 2 3',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                f1 = 1;
                f2 = 2;
                f3 = 3;
                title = "flex 1 2 3";
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Image.asset("images/image_demo.jpg"),
              flex: f1,
            ),
            Flexible(
              child: Image.asset("images/image_demo.jpg"),
              flex: f2,
            ),
            Flexible(
              child: Image.asset("images/image_demo.jpg"),
              flex: f3,
            ),
          ],
        ),
      ),
    );
  }
}
