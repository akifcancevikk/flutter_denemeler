import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class SalomonBottomBarPage extends StatefulWidget {
  const SalomonBottomBarPage({super.key});

  @override
  State<SalomonBottomBarPage> createState() => _SalomonBottomBarPageState();
}

class _SalomonBottomBarPageState extends State<SalomonBottomBarPage> {
  var _currentIndex = 0;
  var selectedBodyColor ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(centerTitle: true, title: Text('Salamon Bottom Bar Page'),),
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.purple,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text("Likes"),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        ),
    );
  }
}