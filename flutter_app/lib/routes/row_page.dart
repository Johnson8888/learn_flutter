/*
 * @Author: 弗拉德
 * @Date: 2021-01-12 14:34:54
 * @LastEditTime: 2021-01-13 10:31:52
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
import 'Row/row_crossaxisalignment_page.dart';
import 'Row/row_mainaxisalignment_page.dart';
import 'Row/row_textdirection_page.dart';
import 'Row/row_verticaldirection_page.dart';

class RowDemoPage extends StatefulWidget {
  @override
  _RowDemoPageState createState() => _RowDemoPageState();
}

class _RowDemoPageState extends State<RowDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("RowDemoPage"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 4,
        itemExtent: 60.0,
        padding: EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int index) {
          return _actionButtons()[index];
        },
      ),
    );
  }

  //// 点击按钮的事件
  _actionButtons() {
    return [
      FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return RowMainAxisalignmentDemoPage();
              },
            ),
          );
        },
        child: Card(
          child: Center(
            child: Text("mainAxisAlignment"),
          ),
        ),
      ),
      FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return RowCrossAxisalignmentDemoPage();
              },
            ),
          );
        },
        child: Card(
          child: Center(
            child: Text("crossAxisAlignment"),
          ),
        ),
      ),
      FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return RowTextDirectionDemoPage();
              },
            ),
          );
        },
        child: Card(
          child: Center(
            child: Text("textDirection"),
          ),
        ),
      ),
      FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return RowVerticalDirectionDemoPage();
              },
            ),
          );
        },
        child: Card(
          child: Center(
            child: Text("verticalDirection"),
          ),
        ),
      ),
    ];
  }
}
