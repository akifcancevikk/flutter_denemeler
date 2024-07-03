// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyResponsiveWidget extends StatelessWidget {
  const MyResponsiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('My Responsive Widget'),),
      body: Center(
        child: Container(
          width: screenWidth * 0.8,  // Ekran genişliğinin %80'i
          height: 200,
          color: Colors.blue,
          child: Center(
            child: Text(
              'Responsive Widget',
              style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.05),
            ),
          ),
        ),
      ),
    );
  }
}