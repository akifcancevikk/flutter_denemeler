import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SlidingUpPage extends StatefulWidget {
  const SlidingUpPage({super.key});

  @override
  State<SlidingUpPage> createState() => _SlidingUpPageState();
}

class _SlidingUpPageState extends State<SlidingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Sliding Up Page'),),
      body: SlidingUpPanel(
      panel: Center(
        child: Text("This is the sliding Widget"),
      ),
      body: Center(
        child: Text("This is the Widget behind the sliding panel"),
      ),
    ),
    );
  }
}