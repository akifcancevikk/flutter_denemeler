// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DraggablePageDemo extends StatefulWidget {
  const DraggablePageDemo({super.key});

  @override
  State<DraggablePageDemo> createState() => _DraggablePageDemoState();
}

class _DraggablePageDemoState extends State<DraggablePageDemo> {
  final ScrollController _scrollController = ScrollController();
  double _headerHeight = 200.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      double offset = _scrollController.offset;
      setState(() {
        _headerHeight = (200.0 - offset).clamp(0.0, 200.0);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fixed AppBar'),
      ),
      body: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: _headerHeight,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Expandable Area',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item #$index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
