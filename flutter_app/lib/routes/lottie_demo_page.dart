/*
 * @Author: 弗拉德
 * @Date: 2021-04-12 14:40:45
 * @LastEditTime: 2021-04-13 10:48:05
 * @Support: http://fulade.me
 */

import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

class LottieAnimateDemoPage extends StatefulWidget {
  @override
  _LottieAnimateDemoPageState createState() => _LottieAnimateDemoPageState();
}

class _LottieAnimateDemoPageState extends State<LottieAnimateDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Lottie动画"),
      ),
      body: ListView.builder(
        itemCount: _createLottieList().length,
        itemBuilder: (BuildContext context, int index) {
          return _createLottieList()[index];
        },
      ),
    );
  }

  _createLottieList() {
    return [
      Text(
        "默认样式",
        textAlign: TextAlign.center,
      ),
      Container(
        height: 80,
        width: 80,
        child: Lottie.asset("json/fun_do_like.json"),
      ),
      Text(
        "repeat:false",
        textAlign: TextAlign.center,
      ),
      Container(
        height: 80,
        width: 80,
        child: Lottie.asset(
          "json/fun_do_like.json",
          repeat: false,
        ),
      ),
      Text(
        "reverse:true",
        textAlign: TextAlign.center,
      ),
      Container(
        height: 80,
        width: 80,
        child: Lottie.asset(
          "json/fun_do_like.json",
          reverse: true,
        ),
      ),
      Text(
        "animate:false",
        textAlign: TextAlign.center,
      ),
      Container(
        height: 80,
        width: 80,
        child: Lottie.asset(
          "json/fun_do_like.json",
          animate: false,
        ),
      ),
      Text(
        "从网络加载(加载速度可能很慢)",
        textAlign: TextAlign.center,
      ),
      Container(
        height: 80,
        width: 80,
        child: Lottie.network(
          "https://cdn.jsdelivr.net/gh/johnson8888/blog_pages/images/lottie_test.json",
        ),
      ),
      Text(
        "onLoaded回调",
        textAlign: TextAlign.center,
      ),
      Container(
        height: 80,
        width: 80,
        child: Lottie.network(
          "https://cdn.jsdelivr.net/gh/johnson8888/blog_pages/images/lottie_test.json",
          onLoaded: (LottieComposition composition) {
            print("onLoaded");
          },
        ),
      ),
    ];
  }
}
