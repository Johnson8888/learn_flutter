/*
 * @Author: 弗拉德
 * @Date: 2020-12-17 14:34:54
 * @LastEditTime: 2021-01-05 17:03:02
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';
import 'dart:math';

class StatefulWidgetDemoPage extends StatefulWidget {
  @override
  _StatefulWidgetDemoPageState createState() => _StatefulWidgetDemoPageState();
}

class _StatefulWidgetDemoPageState extends State<StatefulWidgetDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("StatefuleWidget Demo"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(10),
            color: _randomColor(),
          ),
        ],
      ),
    );
  }

  /// 获取一个随机的颜色值
  _randomColor() {
    return Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255),
        Random().nextInt(255));
  }
}
