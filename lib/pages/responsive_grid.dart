// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ResponsiveGridPage extends StatefulWidget {
  const ResponsiveGridPage({super.key});

  @override
  State<ResponsiveGridPage> createState() => _ResponsiveGridPageState();
}

class _ResponsiveGridPageState extends State<ResponsiveGridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Responsive Grid Page',
          ),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 50),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    height: 150,
                    alignment: Alignment(0, 0),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
              ResponsiveGridCol(
                xs: 6,
                md: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 4, top: 10),
                  child: Container(
                    height: 150,
                    alignment: Alignment(0, 0),
                    decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("xs : 6 \r\nmd : 3"),
                  ),
                ),
              ),
             
            ],
                    ),
          ),
        ),
    );
  }
}