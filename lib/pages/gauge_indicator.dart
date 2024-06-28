// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';

class GaugeIndicatorPage extends StatefulWidget {
  const GaugeIndicatorPage({super.key});

  @override
  State<GaugeIndicatorPage> createState() => _GaugeIndicatorPageState();
}

class _GaugeIndicatorPageState extends State<GaugeIndicatorPage> {
  double deger = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(centerTitle: true, title: Text('Gauge Indicator Page'),),
      body: Column(
        children: [
          AnimatedRadialGauge(
            builder: (context, child, value) {
              return Center(child: Text('${deger.toInt()}'));
            },
            duration: const Duration(seconds: 2),
            curve: Curves.elasticOut,
            radius:200,
            value: deger,
            axis: GaugeAxis(
              min: 0,
              max: 100,
              degrees: 340,
              style: const GaugeAxisStyle(
                thickness: 20,
                background: Color(0xFFDFE2EC),
                segmentSpacing: 4,
                    ),
          
              /// Define the pointer that will indicate the progress (optional).
              pointer: GaugePointer.circle(
                  position: GaugePointerPosition.center(),
                  radius: BorderSide.strokeAlignCenter,
                  //borderRadius: 16,
                  color: Colors.red,
          
              ),
              progressBar:  GaugeProgressBar.rounded(
               placement: GaugeProgressPlacement.over,
              color: deger <=1 
              ?Colors.blueGrey
              : Colors.pink,
              ),

            ),
          ),
              SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Slider(
                      value: deger,
                      max: 100,
                      label: deger.round().toString(),
                      onChanged: (double value) {
                        setState(() {
              deger = value;
                        });
                      },
                    ),
            )
        ],
      )
    );
  }
}