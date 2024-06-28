// ignore_for_file: unused_local_variable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

class ShakePage extends StatefulWidget {
  const ShakePage({super.key});

  @override
  State<ShakePage> createState() => _ShakePageState();
}

class _ShakePageState extends State<ShakePage> {
  
  @override
  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Cihaz Sallandı!'),
          ),
        );
        // Do stuff on phone shake
      },
      minimumShakeCount: 1,
      shakeSlopTimeMS: 500,
      shakeCountResetTime: 3000,
      shakeThresholdGravity: 2.7,
    );

    // To close: detector.stopListening();
    // ShakeDetector.waitForStart() waits for user to call detector.startListening();
  }
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Shake Page'),),
      body: Center(child: Text('Mesaj için cihazınızı sallayın!!!'),),
    );
  }
}