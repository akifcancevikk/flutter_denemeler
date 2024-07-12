// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

class SlideCountDownPage extends StatefulWidget {
  const SlideCountDownPage({super.key});

  @override
  State<SlideCountDownPage> createState() => _SlideCountDownPageState();
}

class _SlideCountDownPageState extends State<SlideCountDownPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slide Count Down Page'),),
      body: Center(
        child: SlideCountdown(
          onDone: () {
            showDialog(context: context, builder: (context) {
              return AlertDialog(
                title: Text('Bitti'),
              );
            },);
          },
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.pink
          ),
        duration: const Duration(seconds: 145),
),
      ),
    );
  }
}