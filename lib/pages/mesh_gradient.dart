// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

class MeshGradientPage extends StatefulWidget {
  const MeshGradientPage({super.key});

  @override
  State<MeshGradientPage> createState() => _MeshGradientPageState();
}

class _MeshGradientPageState extends State<MeshGradientPage>  with TickerProviderStateMixin{
  late final MeshGradientController _controller;
  @override
  void initState() {
    super.initState();
    _controller = MeshGradientController(
      points: [
        MeshGradientPoint(
          position: const Offset(
            -1,
            0.2,
          ),
          color: const Color.fromARGB(255, 251, 0, 105),
        ),
        MeshGradientPoint(
          position: const Offset(
            2,
            0.6,
          ),
          color: const Color.fromARGB(255, 69, 18, 255),
        ),
        MeshGradientPoint(
          position: const Offset(
            0.7,
            0.3,
          ),
          color: const Color.fromARGB(255, 0, 255, 198),
        ),
        MeshGradientPoint(
          position: const Offset(
            0.4,
            0.8,
          ),
          color: const Color.fromARGB(255, 255, 81, 0),
        ),
      ],
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Mesh Gradient Page'),),
        body: Column(
          children: [
            SizedBox(height: 100,),
            SizedBox(
              height: 400,
              width: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: MeshGradient(
                  controller: _controller,
                  options: MeshGradientOptions(
                    blend: 10,
                    noiseIntensity: 0.5,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () async {
                  // MeshGradientController functions are async, so you can await them
                  await _controller.animateSequence(
                    duration: const Duration(seconds: 4),
                    sequences: [
                      AnimationSequence(
                        pointIndex: 0,
                        newPoint: MeshGradientPoint(
                          position: Offset(
                            Random().nextDouble() * 2 - 0.5,
                            Random().nextDouble() * 2 - 0.5,
                          ),
                          color: _controller.points.value[0].color,
                        ),
                        interval: const Interval(
                          0,
                          0.5,
                          curve: Curves.easeInOut,
                        ),
                      ),
                      AnimationSequence(
                        pointIndex: 1,
                        newPoint: MeshGradientPoint(
                          position: Offset(
                            Random().nextDouble() * 2 - 0.5,
                            Random().nextDouble() * 2 - 0.5,
                          ),
                          color: _controller.points.value[1].color,
                        ),
                        interval: const Interval(
                          0.25,
                          0.75,
                          curve: Curves.easeInOut,
                        ),
                      ),
                      AnimationSequence(
                        pointIndex: 2,
                        newPoint: MeshGradientPoint(
                          position: Offset(
                            Random().nextDouble() * 2 - 0.5,
                            Random().nextDouble() * 2 - 0.5,
                          ),
                          color: _controller.points.value[2].color,
                        ),
                        interval: const Interval(
                          0.5,
                          1,
                          curve: Curves.easeInOut,
                        ),
                      ),
                      AnimationSequence(
                        pointIndex: 3,
                        newPoint: MeshGradientPoint(
                          position: Offset(
                            Random().nextDouble() * 2 - 0.5,
                            Random().nextDouble() * 2 - 0.5,
                          ),
                          color: _controller.points.value[3].color,
                        ),
                        interval: const Interval(
                          0.75,
                          1,
                          curve: Curves.easeInOut,
                        ),
                      ),
                    ],
                  );
                },
                child: const Text("Animate"),
              ),
            ),
          ],
        ),
      );
  }
}