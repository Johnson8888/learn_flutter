/*
 * @Author: 弗拉德
 * @Date: 2020-12-20 14:50:19
 * @LastEditTime: 2020-12-28 16:24:02
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
          Container(
            child: Text("Fulade"),
            color: Colors.red,
          ),
          Container(
            child: Text("Pading 10"),
            padding: EdgeInsets.all(10),
            color: Colors.blue,
          ),
          Container(
            child: Text("Margin 10"),
            margin: EdgeInsets.all(10),
            color: Colors.green,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            margin: EdgeInsets.all(10),
            child: Text("transform"),
            transform: Matrix4.rotationZ(0.1),
            color: Colors.red,
          ),
          Container(
            child: Text("Decoration"),
            padding: EdgeInsets.symmetric(horizontal: 15),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          Container(
            height: 40,
            width: 100,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/flutter_icon_100.png"),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            child: Text('BoxDecoration with border'),
            padding: EdgeInsets.symmetric(horizontal: 15),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.red,
                width: 3,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.all(20), //容器外填充
            decoration: BoxDecoration(
              gradient: RadialGradient(
                  colors: [Colors.blue, Colors.black, Colors.red],
                  center: Alignment.center,
                  radius: 5),
            ),
            child: Text(
              //卡片文字
              "RadialGradient",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
