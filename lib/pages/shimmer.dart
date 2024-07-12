// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPage extends StatefulWidget {
  const ShimmerPage({super.key});

  @override
  State<ShimmerPage> createState() => _ShimmerPageState();
}

class _ShimmerPageState extends State<ShimmerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shimmer Page'),),
      body: Center(
        child: SizedBox(
          width: 200.0,
          height: 100.0,
          child: Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.white,
            child: Text(
              'Shimmer',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.0,
                fontWeight:
                FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}