/*
 * @Author: 弗拉德
 * @Date: 2020-01-07 13:31:11
 * @LastEditTime: 2021-01-07 17:52:34
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';

class TextFiledDemoPage extends StatefulWidget {
  @override
  _TextFiledDemoPageState createState() => _TextFiledDemoPageState();
}

class _TextFiledDemoPageState extends State<TextFiledDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TextFiled Demo"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: _createTextFiledList().length,
        itemExtent: 60.0, //强制高度为50.0
        padding: EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int index) {
          return _createTextFiledList()[index];
        },
      ),
    );
  }

  /// 生成当前 TextFiled 的列表连接
  List _createTextFiledList() {
    return [
      TextField(
        decoration: InputDecoration(
          labelText: "Normal",
        ),
      ),
      TextField(
        maxLength: 10,
        decoration: InputDecoration(
          labelText: "最多10个字符",
        ),
      ),
      TextField(
        maxLines: 2,
        decoration: InputDecoration(
          labelText: "两行文字，超出的文字上翻",
        ),
      ),
      TextField(
        decoration: InputDecoration(
          labelText: "labelText 有颜色",
          labelStyle: TextStyle(color: Colors.red),
        ),
      ),
      TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.account_box),
          labelText: "左侧有一个Icon",
        ),
      ),
      TextField(
        decoration: InputDecoration(
          labelText: "右侧的两个Icon suffix 和 suffixIcon",
          suffix: Icon(Icons.account_box),
          suffixIcon: Icon(Icons.add),
        ),
      ),
      TextField(
        decoration: InputDecoration(
          labelText: "下方带有辅助提示的TextFiled",
          helperText: "辅助提示",
          helperStyle: TextStyle(color: Colors.red),
        ),
      ),
      TextField(
        decoration: InputDecoration(
          labelText: "选中时没有下划线",
          focusedBorder: InputBorder.none,
        ),
      ),
      TextField(
        decoration: InputDecoration(
          labelText: "选中时的下划线颜色",
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
      ),
    ];
  }
}
