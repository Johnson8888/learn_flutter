/*
 * @Author: 弗拉德
 * @Date: 2020-12-17 14:34:54
 * @LastEditTime: 2020-12-18 11:03:43
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';

class RaisedButtonDemoPage extends StatefulWidget {
  @override
  _RaisedButtonDemoPage createState() => _RaisedButtonDemoPage();
}

class _RaisedButtonDemoPage extends State<RaisedButtonDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("RaisedButton Demo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("RaisedButton"),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text("不设置onPressed"),
            disabledColor: Colors.blue,
            disabledTextColor: Colors.red,
          ),
          RaisedButton(
            child: Text("textColor红色"),
            textColor: Colors.red,
            onPressed: () {},
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("椭圆形"),
            shape: StadiumBorder(),
          ),
          RaisedButton(
            child: Text("背景颜色"),
            color: Colors.red,
            onPressed: () {},
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("高亮红色"),
            highlightColor: Colors.red,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text("水波纹红色"),
            splashColor: Colors.red,
          ),
          RaisedButton(
            child: Text("高亮变化回调"),
            onPressed: () {},
            onHighlightChanged: (value) {
              print("高亮切换");
            },
          ),
          RaisedButton(
            child: Text("长按回调"),
            onPressed: () {},
            onLongPress: () {
              print("长按回调");
            },
          ),
          RaisedButton(
            child: Text("阴影设置20"),
            onPressed: () {},
            elevation: 20.0,
          ),
          RaisedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.local_cafe),
            label: Text("RaisedButton"),
          ),
        ],
      ),
    );
  }
}
