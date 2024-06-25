// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class ExpandablePageViewPage extends StatefulWidget {
  const ExpandablePageViewPage({super.key});

  @override
  State<ExpandablePageViewPage> createState() => _ExpandablePageViewPageState();
}

class _ExpandablePageViewPageState extends State<ExpandablePageViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Expandable Page View Page'),),
      body: Column(
        children: [
          ExpandablePageView(
            children: [
              SingleChildScrollView(
          child: Column(
            children: [
              ExpandablePageView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      height: 250,
                      width: 250,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      height: 300,
                      width: 250,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      height: 250,
                      width: 250,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
              ),         
            ],
          ),
          Container(
            width: 50,
            height: 25,
            color: Colors.pink,
          )
        ],
      ),
      
    );
  }
}


