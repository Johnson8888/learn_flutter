/*
 * @Author: 弗拉德
 * @Date: 2020-01-13 19:31:11
 * @LastEditTime: 2021-01-14 11:21:59
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';
import 'Flexible/flexible_demo_1.dart';
import 'Flexible/flexible_demo_2.dart';
import 'Flexible/flexible_demo_3.dart';
import 'Flexible/flexible_demo_4.dart';

class FlexibleDemoPage extends StatefulWidget {
  @override
  _FlexibleDemoPageState createState() => _FlexibleDemoPageState();
}

class _FlexibleDemoPageState extends State<FlexibleDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("FlexibleDemo"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 4,
        itemExtent: 60.0,
        padding: EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int index) {
          return _acitonButtons()[index];
        },
      ),
    );
  }

  List<Widget> _acitonButtons() {
    final list = [
      {
        "title": "按比例分布",
        "page": FlexibleDemo1Page(),
      },
      {
        "title": "tight 和 loose",
        "page": FlexibleDemo2Page(),
      },
      {
        "title": "优先布局",
        "page": FlexibleDemo3Page(),
      },
      {
        "title": "填充剩余空间",
        "page": FlexibleDemo4Page(),
      }
    ];
    return List<Widget>.generate(
      list.length,
      (index) => FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return list[index]["page"];
              },
            ),
          );
        },
        child: Card(
          child: Center(
            child: Text(list[index]["title"]),
          ),
        ),
      ),
    );
  }
}
