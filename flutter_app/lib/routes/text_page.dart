/*
 * @Author: 弗拉德
 * @Date: 2020-12-16 08:36:42
 * @LastEditTime: 2020-12-16 19:31:38
 * @Support: http://fulade.me
 */
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextDemoPage extends StatefulWidget {
  @override
  _TextDemoPageState createState() => _TextDemoPageState();
}

class _TextDemoPageState extends State<TextDemoPage> {
  var tapCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Text Demo"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Fulade"),
                Text(
                  "文字放大1.5倍",
                  textScaleFactor: 1.5,
                ),
                Text(
                  "居右显示" * 10,
                  textAlign: TextAlign.right,
                ),
                Text(
                  "最多一行显示超过部分显示..." * 10,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "粗体",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "红色",
                  style: TextStyle(color: Colors.red),
                ),
                Text(
                  "字号20",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "斜体",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                Text(
                  "背景颜色红色",
                  style: TextStyle(
                      background: Paint()..color = Colors.red,
                      color: Colors.blue),
                ),
                Text(
                  "删除线",
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.red),
                ),
                Text(
                  "下划线",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "多彩文字：",
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: "红色、", style: TextStyle(color: Colors.red)),
                      TextSpan(
                          text: "蓝色、", style: TextStyle(color: Colors.blue)),
                      TextSpan(
                          text: "绿色 ", style: TextStyle(color: Colors.green)),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: "添加了手势的文字: ",
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: "点击会输出Log",
                        style: TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            tapCount++;
                            print("taped taped " + tapCount.toString());
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            DefaultTextStyle(
              //1.设置文本默认样式
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("DefaultTextStyle "),
                  Text("DefaultTextStyle"),
                  Text(
                    "改变了的DefaultTextStyle",
                    style: TextStyle(
                        inherit: false, //设置不再继承默认样式
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
