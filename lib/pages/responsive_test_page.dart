import 'package:flutter/material.dart';

class MyResponsiveWidget extends StatelessWidget {
  const MyResponsiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Center(
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
    );
  }
}