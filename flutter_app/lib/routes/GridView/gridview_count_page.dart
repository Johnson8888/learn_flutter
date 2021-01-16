/*
 * @Author: 弗拉德
 * @Date: 2021-01-16 10:17:36
 * @LastEditTime: 2021-01-16 16:26:13
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';

class GridViewCountDemoPage extends StatefulWidget {
  @override
  _GridViewCountDemoPageState createState() => _GridViewCountDemoPageState();
}

class _GridViewCountDemoPageState extends State<GridViewCountDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("GridViewDemo"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 2 / 3,
        children: List.generate(
          50,
          (index) {
            return Card(
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text("$index"),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
