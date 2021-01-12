/*
 * @Author: 弗拉德
 * @Date: 2020-12-17 19:31:11
 * @LastEditTime: 2021-01-12 16:37:07
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';

class FlatButtonDemoPage extends StatefulWidget {
  @override
  _FlatButtonDemoPageState createState() => _FlatButtonDemoPageState();
}

class _FlatButtonDemoPageState extends State<FlatButtonDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flat Button Demo"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FlatButton(
            child: Text("FlatButton"),
            onPressed: () {},
          ),
          FlatButton(
            child: Text("不设置onPressed"),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("textColor红色"),
            textColor: Colors.red,
          ),
          FlatButton(
            onPressed: () {},
            child: Text("椭圆形"),
            shape: StadiumBorder(),
          ),
          FlatButton(
            child: Text("背景颜色"),
            color: Colors.red,
            onPressed: () {},
          ),
          FlatButton(
            onPressed: () {},
            child: Text("高亮红色"),
            highlightColor: Colors.red,
          ),
          FlatButton(
            onPressed: () {},
            child: Text("水波纹红色"),
            splashColor: Colors.red,
          ),
          FlatButton(
            child: Text("高亮变化回调"),
            onPressed: () {},
            onHighlightChanged: (value) {
              print("高亮切换");
            },
          ),
          FlatButton(
            child: Text("长按回调"),
            onPressed: () {},
            onLongPress: () {
              print("长按回调");
            },
          ),
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(Icons.local_cafe),
            label: Text("FlatButton"),
          ),
        ],
      ),
    );
  }
}
