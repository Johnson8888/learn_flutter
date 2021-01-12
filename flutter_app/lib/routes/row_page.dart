/*
 * @Author: 弗拉德
 * @Date: 2021-01-12 14:34:54
 * @LastEditTime: 2021-01-12 21:03:43
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [],
      ),
    );
  }
}
