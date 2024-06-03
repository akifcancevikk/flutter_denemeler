// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonTabbarPage extends StatefulWidget {
  const ButtonTabbarPage({super.key});

  @override
  State<ButtonTabbarPage> createState() => _ButtonTabbarPageState();
}

class _ButtonTabbarPageState extends State<ButtonTabbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Button Tabbar Page'),),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                backgroundColor: Colors.red,
                unselectedBackgroundColor: Colors.grey[300],
                unselectedLabelStyle: TextStyle(color: Colors.black),
                labelStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    icon: Icon(Icons.directions_car),
                    text: "Araba",
                  ),
                  Tab(
                    icon: Icon(Icons.directions_transit),
                    text: "Toplu Taşıma",
                  ),
                  Tab(
                    icon: Icon(Icons.directions_bike),
                    text: "Bisiklet",
                    ),
                  
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Center(
                      child: Icon(Icons.directions_car),
                    ),
                    Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    Center(
                      child: Icon(Icons.directions_bike),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}