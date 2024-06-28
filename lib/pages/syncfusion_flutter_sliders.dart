// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SyncfusionFlutterSlidersPage extends StatefulWidget {
  const SyncfusionFlutterSlidersPage({super.key});

  @override
  State<SyncfusionFlutterSlidersPage> createState() => _SyncfusionFlutterSlidersPageState();
}

class _SyncfusionFlutterSlidersPageState extends State<SyncfusionFlutterSlidersPage> {
  SfRangeValues _values = SfRangeValues(40, 80);
  double _value = 40.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: const Text('Syncfusion Flutter Range Slider'),
     ),
     body: Column(
       children: [
          SizedBox(height: 50,),
         SfRangeSlider(
            min: 0,
            max: 200,
            values: _values,
            interval: 50,
            showTicks: true,
            showLabels: true,
            enableTooltip: true,
            minorTicksPerInterval: 1,
            onChanged: (SfRangeValues values){
              setState(() {
                _values = values;
              });
            },
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Min Değer: ${_values.start.toInt()}'),
              SizedBox(width: 50,),
              Text('Max Değer: ${_values.end.toInt()}'),
            ],
          ),
          SfSlider.vertical(
      min: 0.0,
      max: 100.0,
      value: _value,
      interval: 20,
      showTicks: true,
      showLabels: true,
      enableTooltip: true,
      minorTicksPerInterval: 1,
      onChanged: (dynamic value) {
        setState(() {
          _value = value;
        });
      },
    ),
    Text('Değer: ${_value.toInt()}'),

       ],
     ),
   );
  }
}