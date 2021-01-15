/*
 * @Author: 弗拉德
 * @Date: 2021-01-14 19:31:11
 * @LastEditTime: 2021-01-15 15:23:42
 * @Support: http://fulade.me
 */
import 'package:flutter/material.dart';
import 'Wrap/wrap_direction_page.dart';
import 'Wrap/wrap_alignment_page.dart';
import 'Wrap/wrap_runalignment_page.dart';
import 'Wrap/wrap_verticaldirection_page.dart';
import 'Wrap/wrap_spacing_page.dart';

class WrapDemoPage extends StatefulWidget {
  @override
  _WrapDemoPageState createState() => _WrapDemoPageState();
}

class _WrapDemoPageState extends State<WrapDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("WrapDemo"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemExtent: 60,
        itemBuilder: (context, index) => _actionButtons()[index],
      ),
    );
  }

  List<Widget> _actionButtons() {
    final list = [
      {"title": "direction", "page": WrapDirectionDemoPage()},
      {"title": "alignment", "page": WrapAlignmentDemoPage()},
      {"title": "runAlignment", "page": WrapRunAlignmentDemoPage()},
      {"title": "verticalDirection", "page": WrapVerticalDirectionDemoPage()},
      {"title": "spacing", "page": WrapSpcaingDemoPage()}
    ];
    return List<Widget>.generate(
      list.length,
      (index) => FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return list[index]["page"];
              },
            ),
          );
        },
        child: Card(
          child: Center(
            child: Text(list[index]["title"]),
          ),
        ),
      ),
    );
  }
}
