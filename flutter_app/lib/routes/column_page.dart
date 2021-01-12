/*
 * @Author: 弗拉德
 * @Date: 2021-01-12 08:32:59
 * @LastEditTime: 2021-01-12 14:35:56
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
import 'Column/column_mainaxisalignment_page.dart';
import 'Column/column_crossaxisalignment_page.dart';
import 'Column/column_textdirection_page.dart';

class ColumnDemoPage extends StatefulWidget {
  @override
  _ColumnDemoPageState createState() => _ColumnDemoPageState();
}

class _ColumnDemoPageState extends State<ColumnDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ColumnDemoPage"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 3,
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
                return ColumnMainAxisalignmentDemoPage();
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
                return ColumnCrossAxisalignmentDemoPage();
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
                return ColumnTextDirectionDemoPage();
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
    ];
  }
}
