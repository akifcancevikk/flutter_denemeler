// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_scroll/text_scroll.dart';

class TextScrollPage extends StatefulWidget {
  const TextScrollPage({super.key});

  @override
  State<TextScrollPage> createState() => _TextScrollPageState();
}

class _TextScrollPageState extends State<TextScrollPage> {
  bool _clicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Text Scroll Page'),),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: const [
                  Flexible(
                    child: TextScroll(
                      'This is the sample text for Flutter TextScroll widget.',
                      intervalSpaces: 20,
                      velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
                    ),
                  ),
                  SizedBox(width: 4),
                  Expanded(
                    child: SizedBox(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Expanded(flex: 2, child: Text('Static text')),
                  Flexible(
                    flex: 1,
                    child: TextScroll(
                      'This is the sample text for Flutter TextScroll widget. ',
                      velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
                      pauseBetween: Duration(milliseconds: 1000),
                      mode: TextScrollMode.bouncing,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const TextScroll(
                'This is the sample text for Flutter TextScroll widget. '
                'This is the sample text for Flutter TextScroll widget.',
                mode: TextScrollMode.bouncing,
                numberOfReps: 200,
                delayBefore: Duration(milliseconds: 2000),
                pauseBetween: Duration(milliseconds: 1000),
                velocity: Velocity(pixelsPerSecond: Offset(100, 0)),
                style: TextStyle(decoration: TextDecoration.underline),
                textAlign: TextAlign.right,
                selectable: true,
              ),
              const SizedBox(height: 20),
              const TextScroll(
                'Hey! I\'m a RTL text, check me out. Hey! I\'m a RTL text, check me out. Hey! I\'m a RTL text, check me out. ',
                textDirection: TextDirection.rtl,
              ),
              const SizedBox(height: 20),
              const TextScroll(
                'This is the sample text for Flutter TextScroll widget with faded border.',
                intervalSpaces: 10,
                velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
                fadedBorder: true,
                fadeBorderVisibility: FadeBorderVisibility.auto,
                fadeBorderSide: FadeBorderSide.both,
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _clicked == true
                    ? _clicked = false
                    : _clicked = true;
                  } );
                },
                child: TextScroll(
                  'Click me to start scrolling. Click me to start scrolling. Click me to start scrolling. Click me to start scrolling. ',
                  velocity: Velocity(
                    pixelsPerSecond: Offset(_clicked ? 150 : 0, 0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}