// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_denemeler/methods/images.dart';
import 'package:flutter_tilt/flutter_tilt.dart';

class FlutterTiltPage extends StatefulWidget {
  const FlutterTiltPage({super.key});

  @override
  State<FlutterTiltPage> createState() => _FlutterTiltPageState();
}

class _FlutterTiltPageState extends State<FlutterTiltPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Flutter Tilt Page'),),
      body: Center(
        child: Tilt(
          lightConfig: LightConfig(
            color: Colors.pink.shade900
          ),
  borderRadius: BorderRadius.circular(15),
  childLayout:  ChildLayout(
    outer: [
      Positioned(
        child: TiltParallax(
          child: SizedBox(
            height: 150,
            width: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(Images.imageUrls[20]))),
        ),
      ),
      Positioned(
        top: 20.0,
        left: 5.0,
        child: TiltParallax(
          size: Offset(-10.0, -10.0),
          child: Text('Başlık',style: TextStyle(color: Colors.white),),
        ),
      ),
    ],
  ),
  child: Container(
    width: 210,
    height: 300.0,
    color: Colors.blue,
  ),
),
      ),
    );
  }
}