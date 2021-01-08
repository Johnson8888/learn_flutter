/*
 * @Author: 弗拉德
 * @Date: 2020-12-15 20:51:56
 * @LastEditTime: 2021-01-08 10:50:57
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var demoList = [
    {"title": "Text", "route": "TextDemoPage"},
    {"title": "RaisedButton", "route": "RaisedButtonDemoPage"},
    {"title": "FlatButton", "route": "FlatButtonDemoPage"},
    {"title": "OutlineButton", "route": "OutlineButtonDemoePage"},
    {"title": "Icon Buttton", "route": "IconButtonDemoPage"},
    {"title": "Container", "route": "ContainerDemoPage"},
    {"title": "StatefulWidget", "route": "StatefulWidgetDemoPage"},
    {"title": "TextField", "route": "TextFieldDemoPage"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter UI 教程"),
      ),
      body: ListView.builder(
        itemCount: demoList.length,
        itemExtent: 60.0, //强制高度为50.0
        padding: EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int index) {
          return FlatButton(
              onPressed: () => _pushAction(index),
              child: Card(
                child: Center(
                  child: Text(demoList[index]["title"]),
                ),
              ));
        },
      ),
    );
  }

  void _pushAction(int index) {
    var routeName = demoList[index]["route"];
    // print(demoList);
    Navigator.pushNamed(context, routeName);
  }
}
