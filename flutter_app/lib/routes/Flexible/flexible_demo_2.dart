/*
 * @Author: 弗拉德
 * @Date: 2021-01-13 19:48:36
 * @LastEditTime: 2021-01-13 20:41:36
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class FlexibleDemo2Page extends StatefulWidget {
  @override
  _FlexibleDemo2PageState createState() => _FlexibleDemo2PageState();
}

class _FlexibleDemo2PageState extends State<FlexibleDemo2Page> {
  var title = "FlexFit.loose";
  var fit = FlexFit.loose;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        child: Icon(Icons.change_history),
        children: [
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'FlexFit.tight',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "FlexFit.tight";
                fit = FlexFit.tight;
              });
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.change_history),
            backgroundColor: Colors.green,
            label: 'FlexFit.loose',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () {
              setState(() {
                title = "FlexFit.loose";
                fit = FlexFit.loose;
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
              flex: 1,
            ),
            Flexible(
              child: Image.asset(
                "images/image_demo.jpg",
                height: 80,
              ),
              fit: fit,
              flex: 2,
            ),
            Flexible(
              child: Image.asset("images/image_demo.jpg"),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
