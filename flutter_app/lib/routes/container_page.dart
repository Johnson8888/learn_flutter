/*
 * @Author: 弗拉德
 * @Date: 2020-12-20 14:50:19
 * @LastEditTime: 2020-12-20 14:54:43
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';

class ContainerDemoPage extends StatefulWidget {
  @override
  _ContainerDemoPageState createState() => _ContainerDemoPageState();
}

class _ContainerDemoPageState extends State<ContainerDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Container Demo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(),
        ],
      ),
    );
  }
}
