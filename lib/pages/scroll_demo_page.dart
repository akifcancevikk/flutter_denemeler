import 'dart:async';

import 'package:flutter/material.dart';

class ScrollDemoPage extends StatefulWidget {
  const ScrollDemoPage({super.key});

  @override
  State<ScrollDemoPage> createState() => _ScrollDemoPageState();
}

class _ScrollDemoPageState extends State<ScrollDemoPage> {
var _scrollParent = false;
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      padding: EdgeInsets.all(8),
      color: Colors.yellow,
      child: ListView.builder(
        controller: controller,
        itemBuilder: (c, i) =>
        i == 10
          ? Container(
          height: 150,
          color: Colors.red,
          child: NotificationListener<OverscrollNotification>(
            onNotification: (OverscrollNotification value) {
              if (value.overscroll < 0 && controller.offset + value.overscroll <= 0) {
                if (controller.offset != 0) controller.jumpTo(0);
                return true;
              }
              if (controller.offset + value.overscroll >= controller.position.maxScrollExtent) {
                if (controller.offset != controller.position.maxScrollExtent) controller.jumpTo(controller.position.maxScrollExtent);
                return true;
              }
              controller.jumpTo(controller.offset + value.overscroll);
              return true;
            },
            child: ListView.builder(
              itemBuilder: (c, ii) => Text('-->' + ii.toString()),
              itemCount: 20,
            ),
          ),
        )
          : Text(i.toString()),
        itemCount: 45,
      ),
    )
    );
  }
}
