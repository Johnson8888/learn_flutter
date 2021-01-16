/*
 * @Author: 弗拉德
 * @Date: 2021-01-16 10:17:36
 * @LastEditTime: 2021-01-16 10:34:59
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';

class ListViewBuilderDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("ListBuilderDemo"),
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView(
              children: List.generate(
                10,
                (index) {
                  print("without builder index = $index");
                  return Container(
                    height: 60,
                    child: Card(
                      color: Colors.blue,
                      child: Center(child: Text("$index")),
                    ),
                  );
                },
              ),
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: 10,
              itemExtent: 60,
              itemBuilder: (BuildContext contenxt, int index) {
                print("builder index = $index");
                return Container(
                  height: 60,
                  child: Card(
                    color: Colors.red,
                    child: Center(child: Text("$index")),
                  ),
                );
              },
            ),
          ),
          Flexible(
            child: ListView.separated(
              itemCount: 10,
              itemBuilder: (BuildContext contenxt, int index) {
                print("sepatated index = $index");
                return Container(
                  height: 60,
                  child: Container(
                    color: Colors.yellow,
                    child: Center(
                      child: Text("$index"),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(height: .0);
              },
            ),
          ),
        ],
      ),
    );
  }
}

// class ListViewBuilderDemoPage extends StatefulWidget {
//   @override
//   _ListViewBuilderDemoPageState createState() =>
//       _ListViewBuilderDemoPageState();
// }

// class _ListViewBuilderDemoPageState extends State<ListViewBuilderDemoPage> {
//   @override

// }
