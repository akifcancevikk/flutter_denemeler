// ignore_for_file: prefer_const_constructors, sort_child_properties_last

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
        color: Colors.amber,
        collapsed: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 5,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Filtreleme Seçenekleri'),
              )
            ],
          ),
          decoration: BoxDecoration(
          color: Colors.red, 
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
          ),
          height: 10,
          ),
         backdropTapClosesPanel: true,
         backdropEnabled: true,
         borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      panel: Center(
        child: Text("This is the sliding Widget"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 300),
          child: TextButton(
            child: Text('Click It'),
            onPressed: () {
              showDialog(context: context, builder: (context) {
                return AlertDialog(
                  title: Text('Alert'),
                );
              },);
            },
            ),
        ),
      ),
    ),
    );
  }
}