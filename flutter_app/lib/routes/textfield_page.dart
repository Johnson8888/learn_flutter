/*
 * @Author: 弗拉德
 * @Date: 2020-01-07 13:31:11
 * @LastEditTime: 2021-01-08 14:24:39
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  @override
  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TextField Demo"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 12,
        itemExtent: 70.0, //强制高度为60.0
        padding: EdgeInsets.all(10),
        itemBuilder: (BuildContext context, int index) {
          return _createTextFieldList()[index];
        },
      ),
    );
  }

  /// 生成当前 TextField 的列表连接
  List _createTextFieldList() {
    TextEditingController controller = TextEditingController();
    return [
      TextField(
        decoration: InputDecoration(
          labelText: "最基本的的TextField",
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
          labelText: "下方带有辅助提示的TextField",
          helperText: "我是辅助提示",
          helperStyle: TextStyle(color: Colors.red),
        ),
      ),
      TextField(
        decoration: InputDecoration(
          labelText: "点击后会有提示",
          hintText: "我是点击后的提示",
          hintStyle: TextStyle(color: Colors.red),
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
      TextField(
        controller: controller,
        onChanged: (value) {
          print("onChanged value = " + value);
        },
        onSubmitted: (value) {
          print("onSubmitted value = " + value);
        },
        onEditingComplete: () {
          print("onEditingComplete value = " + controller.text);
        },
        decoration: InputDecoration(
          labelText: "输入事件监听",
        ),
      ),
      TextField(
        decoration: InputDecoration(
          labelText: "键盘回收",
          suffixIcon: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                FocusScope.of(context).requestFocus(FocusNode());
              }),
        ),
      ),
    ];
  }
}
