/*
 * @Author: 弗拉德
 * @Date: 2020-12-16 08:36:42
 * @LastEditTime: 2020-12-16 09:17:05
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';

class TextDemoPage extends StatefulWidget {
  @override
  _TextDemoPageState createState() => _TextDemoPageState();
}

class _TextDemoPageState extends State<TextDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Text Demo"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Text("Text Demo"),
    );
  }
}
