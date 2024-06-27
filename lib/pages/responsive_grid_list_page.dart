import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class ResponsiveGridListPage extends StatefulWidget {
  const ResponsiveGridListPage({super.key});

  @override
  State<ResponsiveGridListPage> createState() => _ResponsiveGridListPageState();
}

class _ResponsiveGridListPageState extends State<ResponsiveGridListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Grid List Page')),
      body: ResponsiveGridList(
        horizontalGridMargin: 10,
        verticalGridMargin: 10,
        minItemWidth: 180,
        children: List.generate(
          100,
          (index) => Container(
            height: 200,
            decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(15)
            ),
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Text(
                '${index+1}',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}