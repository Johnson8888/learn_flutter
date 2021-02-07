/*
 * @Author: 弗拉德
 * @Date: 2020-12-17 20:32:59
 * @LastEditTime: 2021-02-02 15:25:08
 * @Support: http://fulade.me
 */
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpRequestDemoPage extends StatefulWidget {
  @override
  _HttpRequestDemoPageState createState() => _HttpRequestDemoPageState();
}

class _HttpRequestDemoPageState extends State<HttpRequestDemoPage> {
  String getURL =
      "https://cdn.jsdelivr.net/gh/johnson8888/blog_pages/images/request_demo_test.json";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("HttpRequestDemo"),
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snap) {
          if (snap.hasData == false) {
            return CircularProgressIndicator();
          } else {
            var dataSource = snap.data["tracks"];
            return ListView.builder(
              itemCount: dataSource.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(dataSource[index]["title"]),
                  subtitle: Text(dataSource[index]["cover"]),
                );
              },
            );
          }
        },
      ),
    );
  }

  Future<Map> getData() async {
    var data = await http.get(getURL);
    return jsonDecode(data.body); // http
  }

  /// 通过 then 函数获取请求结果
  getDataWithThenMethod() {
    http.get(getURL).then((value) {
      print(value);
    });
  }
}
