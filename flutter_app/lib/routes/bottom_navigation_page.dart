/*
 * @Author: 弗拉德
 * @Date: 2020-12-17 19:31:11
 * @LastEditTime: 2021-01-29 16:32:55
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';

class BottomNavigationBarDemoPage extends StatefulWidget {
  @override
  _BottomNavigationBarDemoPageState createState() =>
      _BottomNavigationBarDemoPageState();
}

class _BottomNavigationBarDemoPageState
    extends State<BottomNavigationBarDemoPage> {
  int selectedIndex = 0;
  List<Container> containerList = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.green,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BottomNavigationBarDemo"),
        backgroundColor: Colors.blue,
      ),
      body: containerList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        /// 这个很重要
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('F1'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('F2'),
            icon: Icon(Icons.book),
          ),
          BottomNavigationBarItem(
            title: Text('F3'),
            icon: Icon(Icons.school),
          ),
          BottomNavigationBarItem(
            title: Text('F4'),
            icon: Icon(Icons.perm_identity),
          ),
        ],
      ),
    );
  }
}
