// ignore_for_file: prefer_const_constructors

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FlChartPage extends StatefulWidget {
  const FlChartPage({super.key});

  @override
  State<FlChartPage> createState() => _FlChartPageState();
}

class _FlChartPageState extends State<FlChartPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('FL Chart Page'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 200,
              width: 200,
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                      value: 1,
                      title: 'İnternet',
                      radius: 20,
                      color: Colors.pink
                    ),
                    PieChartSectionData(
                      value: 5,
                      title: 'İnternet',
                      radius: 20,
                      color: Colors.amber
                    ),
                    PieChartSectionData(
                      value: 7,
                      title: 'İnternet',
                      radius: 20,
                      color: Colors.blue
                    ),
                    PieChartSectionData(
                      value: 2,
                      title: 'İnternet',
                      radius: 20,
                      color: Colors.yellow
                    ),
                  ]
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 200,
              width: 200,
              child: BarChart(
                BarChartData(
                baselineY: BorderSide.strokeAlignCenter,
                borderData: FlBorderData(show: true),
                barGroups: [
                  BarChartGroupData(
                    x: 1, 
                    barRods: [
                    BarChartRodData(toY: 100)
                  ]
                 ),
                  BarChartGroupData(
                    x: 2,
                    barRods: [
                    BarChartRodData(toY: 120)
                  ]
                    ),
                  BarChartGroupData(
                    x: 3,
                    barRods: [
                    BarChartRodData(toY: 90)
                  ]
                    ),
                ]
              )),
            ),
          ),
          
        ],
      ),
    );
  }
}

class ChartData {
        ChartData(this.x, this.y);
        final int x;
        final double y;
    }