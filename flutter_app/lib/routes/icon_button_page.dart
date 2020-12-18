/*
 * @Author: 弗拉德
 * @Date: 2020-12-18 09:39:30
 * @LastEditTime: 2020-12-18 11:53:36
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';

class IconButtonDemoPage extends StatefulWidget {
  @override
  _IconButtonDemoPageState createState() => _IconButtonDemoPageState();
}

class _IconButtonDemoPageState extends State<IconButtonDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Icon Button Demo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.local_taxi),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.local_cafe),
            tooltip: "Cafe Button",
            color: Colors.red,
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset("images/flutter_icon_100.png"),
            onPressed: () {},
          ),
          BackButton(),
          CloseButton(),
        ],
      ),
    );
  }
}
