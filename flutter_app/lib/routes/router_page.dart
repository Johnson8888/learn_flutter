/*
 * @Author: 弗拉德
 * @Date: 2021-01-31 20:58:07
 * @LastEditTime: 2021-02-01 15:34:04
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';
import 'dart:math';

class RouterDemoPage extends StatefulWidget {
  @override
  _RouterDemoPageState createState() => _RouterDemoPageState();
}

class _RouterDemoPageState extends State<RouterDemoPage> {
  var title = "RouterDemoPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            child: FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, "RouterDemoPage2");
              },
              child: Card(
                child: Center(
                  child: Text("Router跳转"),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            child: FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return RouterDemoPage3(passText: "Fulade");
                })).then((value) {
                  setState(() {
                    title = value;
                  });
                });
              },
              child: Card(
                child: Center(
                  child: Text("Navigator跳转"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RouterDemoPage2 extends StatefulWidget {
  @override
  _RouterDemoPage2State createState() => _RouterDemoPage2State();
}

class _RouterDemoPage2State extends State<RouterDemoPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("RouterDemoPage 2"),
      ),
      body: Container(
        child: Text("Text"),
      ),
    );
  }
}

class RouterDemoPage3 extends StatefulWidget {
  final String passText;
  RouterDemoPage3({Key key, @required this.passText});
  @override
  _RouterDemoPage3State createState() => _RouterDemoPage3State();
}

class _RouterDemoPage3State extends State<RouterDemoPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("value: " + widget.passText),
      ),
      body: Container(
        child: Text("传过来的值为: " + widget.passText),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context, _randomValue());
        },
        child: Text("返回"),
      ),
    );
  }

  String _randomValue() {
    return "返回值为 " + DateTime.now().millisecondsSinceEpoch.toString();
  }
}
