/*
 * @Author: 弗拉德
 * @Date: 2021-01-13 19:48:36
 * @LastEditTime: 2021-01-14 14:02:33
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class FlexibleDemo4Page extends StatefulWidget {
  @override
  _FlexibleDemo4PageState createState() => _FlexibleDemo4PageState();
}

class _FlexibleDemo4PageState extends State<FlexibleDemo4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("填充剩余空间"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          child: Column(
            children: [
              Container(
                child: Image.asset("images/image_demo.jpg"),
                width: 100,
                height: 100,
              ),
              Container(
                child: Image.asset("images/image_demo.jpg"),
                width: 100,
                height: 100,
              ),
              Flexible(
                child: Container(
                  decoration: BoxDecoration(color: Colors.green),
                  width: 300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
