// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FlutterSlidablePage extends StatefulWidget {
  const FlutterSlidablePage({super.key});

  @override
  State<FlutterSlidablePage> createState() => _FlutterSlidablePageState();
}

class _FlutterSlidablePageState extends State<FlutterSlidablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text('Flutter Slidable Page')),
      body: Center(
       child: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
        return Column(
          children: [
            Slidable(
              key: const ValueKey(0),
              startActionPane: ActionPane(
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(onDismissed: () {}),
                children: const [
                  SlidableAction(
                      flex: 1,
                      onPressed: null,
                      backgroundColor: Color(0xFF0392CF),
                      foregroundColor: Colors.white,
                      icon: Icons.save,
                      label: 'Save',
                    ),
                  SlidableAction(
                      flex: 1,
                      onPressed: null,
                      backgroundColor: Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                  SlidableAction(
                      flex: 1,
                      onPressed: null,
                      backgroundColor: Color(0xFF21B7CA),
                      foregroundColor: Colors.white,
                      icon: Icons.share,
                      label: 'Share',
                    ),
                  SlidableAction(
                      flex: 1,
                      onPressed: null,
                      backgroundColor: Color(0xFF7BC043),
                      foregroundColor: Colors.white,
                      icon: Icons.archive,
                      label: 'Archive',
                    ),
                ],
              ),
              child:  ListTile(
                title: Text('Sağa Kaydır', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                tileColor: Color(Random().nextInt(0xf3134fff)).withAlpha(0xf3),
                ),
            ),
            SizedBox(height: 20,)
          ],
        );
       },
      ),
      ),
    );
  }
}