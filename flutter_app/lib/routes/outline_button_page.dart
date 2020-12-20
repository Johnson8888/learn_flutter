/*
 * @Author: 弗拉德
 * @Date: 2020-12-17 20:32:59
 * @LastEditTime: 2020-12-18 11:03:12
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';

class OutlineButtonDemoePage extends StatefulWidget {
  @override
  _OutlineButtonDemoePageState createState() => _OutlineButtonDemoePageState();
}

class _OutlineButtonDemoePageState extends State<OutlineButtonDemoePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Outline Button Demo"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          OutlineButton(
            onPressed: () {},
            child: Text("OutlineButton"),
          ),
          OutlineButton(
            child: Text("不设置onPressed"),
          ),
          OutlineButton(
            onPressed: () {},
            child: Text("textColor红色"),
            textColor: Colors.red,
          ),
          OutlineButton(
            onPressed: () {},
            child: Text("椭圆形"),
            shape: StadiumBorder(),
          ),
          OutlineButton(
            child: Text("Border颜色"),
            borderSide: BorderSide(color: Colors.red, width: 2),
            highlightColor: Colors.yellow,
            highlightedBorderColor: Colors.green,
            onPressed: () {},
          ),
          OutlineButton(
            onPressed: () {},
            child: Text("高亮红色"),
            highlightColor: Colors.red,
          ),
          OutlineButton(
            onPressed: () {},
            child: Text("水波纹红色"),
            splashColor: Colors.red,
          ),
          OutlineButton(
            child: Text("长按回调"),
            onPressed: () {},
            onLongPress: () {
              print("长按回调");
            },
          ),
          OutlineButton.icon(
            onPressed: () {},
            icon: Icon(Icons.local_cafe),
            label: Text("OutlineButton"),
          ),
        ],
      ),
    );
  }
}
