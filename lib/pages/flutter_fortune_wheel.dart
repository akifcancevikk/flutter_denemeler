// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class FlutterFortuneWheelPage extends StatefulWidget {
  const FlutterFortuneWheelPage({super.key});

  @override
  State<FlutterFortuneWheelPage> createState() => _FlutterFortuneWheelPageState();
}

class _FlutterFortuneWheelPageState extends State<FlutterFortuneWheelPage> {
  StreamController<int> controller = StreamController<int>();
  StreamController<int> selected = StreamController<int>();
  @override
  void dispose() {
    selected.close();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final items = <String>[
      'Obi-Wan Kenobi',
      'Grogu',
      'Mace Windu',
    ];
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Country Picker',
          ),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: GestureDetector(
        onTap: () {
          setState(() {
            selected.add(
              Fortune.randomInt(1, items.length),
            );
          });
        },
        child: Column(
          children: [
            Expanded(
              child: FortuneWheel(
                selected: selected.stream,
                items: [
                  for (var it in items) FortuneItem(child: Text(it)),
                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}