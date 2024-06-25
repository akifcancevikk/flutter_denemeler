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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Country Picker',
          ),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: FortuneWheel(
        selected: controller.stream,
        items: [
          FortuneItem(child: Text('Han Solo')),
          FortuneItem(child: Text('Yoda')),
          FortuneItem(child: Text('Obi-Wan Kenobi')),
        ],
      ),
    );
  }
}