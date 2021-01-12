/*
 * @Author: 弗拉德
 * @Date: 2020-01-10 10:31:11
 * @LastEditTime: 2021-01-11 13:28:32
 * @Support: http://fulade.me
 */

import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class ImageDemoPage extends StatefulWidget {
  @override
  _ImageDemoPageState createState() => _ImageDemoPageState();
}

class _ImageDemoPageState extends State<ImageDemoPage> {
  @override
  Widget build(BuildContext context) {
    // debugPaintSizeEnabled = true;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Image Demo"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: _createImageList().length,
        itemExtent: null, //强制高度为60.0
        itemBuilder: (BuildContext context, int index) {
          return _createImageList()[index];
        },
      ),
    );
  }

  _createImageList() {
    return [
      Text(
        "AssetImage",
        textAlign: TextAlign.center,
      ),
      Image(
        image: AssetImage("images/image_demo.jpg"),
        width: 80,
        height: 80,
      ),
      Text(
        "Image.assets",
        textAlign: TextAlign.center,
      ),
      Image.asset(
        "images/image_demo.jpg",
        width: 80,
        height: 80,
      ),
      Text(
        "NetworkImage",
        textAlign: TextAlign.center,
      ),
      Image(
        image: NetworkImage("http://www.fulade.me/img/avatar.jpg"),
        width: 80,
        height: 80,
      ),
      Text(
        "Image.network",
        textAlign: TextAlign.center,
      ),
      Image.network(
        "http://www.fulade.me/img/avatar.jpg",
        width: 80,
        height: 80,
      ),
      Text(
        "BoxFit.contain",
        textAlign: TextAlign.center,
      ),
      Image.asset(
        "images/page_conver_flutter_blue.jpeg",
        height: 100,
        alignment: Alignment.bottomCenter,
        fit: BoxFit.contain,
      ),
      Text(
        "BoxFit.fill",
        textAlign: TextAlign.center,
      ),
      Image.asset(
        "images/page_conver_flutter_blue.jpeg",
        height: 100,
        alignment: Alignment.bottomCenter,
        fit: BoxFit.fill,
      ),
      Text(
        "BoxFit.cover",
        textAlign: TextAlign.center,
      ),
      Image.asset(
        "images/page_conver_flutter_blue.jpeg",
        height: 100,
        alignment: Alignment.bottomCenter,
        fit: BoxFit.cover,
      ),
      Text(
        "BoxFit.fitWidth",
        textAlign: TextAlign.center,
      ),
      Image.asset(
        "images/page_conver_flutter_blue.jpeg",
        height: 100,
        alignment: Alignment.bottomCenter,
        fit: BoxFit.fitWidth,
      ),
      Text(
        "BoxFit.fitHeight",
        textAlign: TextAlign.center,
      ),
      Image.asset(
        "images/page_conver_flutter_blue.jpeg",
        height: 100,
        alignment: Alignment.bottomCenter,
        fit: BoxFit.fitHeight,
      ),
      Text(
        "BoxFit.none",
        textAlign: TextAlign.center,
      ),
      Image.asset(
        "images/page_conver_flutter_blue.jpeg",
        height: 100,
        alignment: Alignment.bottomCenter,
        fit: BoxFit.none,
      ),
      Text(
        "BoxFit.scaleDown",
        textAlign: TextAlign.center,
      ),
      Image.asset(
        "images/page_conver_flutter_blue.jpeg",
        height: 100,
        alignment: Alignment.bottomCenter,
        fit: BoxFit.scaleDown,
      ),
    ];
  }
}
