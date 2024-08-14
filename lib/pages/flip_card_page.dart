// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class FlipCardPage extends StatefulWidget {
  const FlipCardPage({super.key});

  @override
  State<FlipCardPage> createState() => _FlipCardPageState();
}

class _FlipCardPageState extends State<FlipCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Flip Card Page'),),
      body: Center(
        child: SizedBox(
          child: Card(
      elevation: 0.0,
      margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
      color: Color(0x00000000),
      child: FlipCard(
        onFlip: () {
          showDialog(context: context, builder: (context) {
            return AlertDialog(
              title: Text('Döndürüldü'),
            );
          },);
        },
        direction: FlipDirection.VERTICAL,
        side: CardSide.FRONT,
        speed: 1000,
        onFlipDone: (status) {
        },
        front: Container(
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Ön Yüz', style: Theme.of(context).textTheme.displayLarge),
              Text('Döndürmek için Tıklayın',
                  style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ),
        back: Container(
          decoration: BoxDecoration(
            color: Color(0xFF006666),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Arka Yüz', style: Theme.of(context).textTheme.displayLarge),
              Text('Döndürmek için Tıklayın',
                  style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ),
      ),
    ),
          width: 300,
          height: 400,
        ),

    ));
  }

}