// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:siri_wave/siri_wave.dart';

class SiriWavePage extends StatefulWidget {
  const SiriWavePage({super.key});

  @override
  State<SiriWavePage> createState() => _SiriWavePageState();
}

class _SiriWavePageState extends State<SiriWavePage> {
  final controllerIos7 = IOS7SiriWaveformController(
      amplitude: 0.9,
      color: Colors.red,
      frequency: 4,
      speed: 0.05,
    );
  final controllerIos9 = IOS9SiriWaveformController(
      amplitude: 0.9,
      speed: 0.05,
    );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Siri Wave Page'),),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SiriWaveform.ios7(
                    controller: controllerIos7,
                    options: IOS7SiriWaveformOptions(
              height: 180,
              width: 360,
                    ),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SiriWaveform.ios9(
                    controller: controllerIos9,
                    options: IOS9SiriWaveformOptions(
                      height: 180,
                      width: 360,
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}