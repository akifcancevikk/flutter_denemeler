// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

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
      backgroundColor: Colors.white,
      appBar: AppBar(centerTitle: true, title: Text('Salamon Bottom Bar Page'),),
      body: Column(
        children: [
          Expanded(
            flex: 1 ,
            child: Center(
              child: CircleAvatar(
                radius: 60,
              ),
            )
          ),
          Expanded(
            flex: 4 ,
          child: Center(
        child: _currentIndex == 0
        ? Container(height: 10000 ,color: Colors.pink, child: Center(child: Text('Hesap Hareketleri', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),))
        : _currentIndex == 1
        ? Container(color: Colors.orangeAccent, child: Center(child: Text('Yapılacak Tahsilatlar', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),))
        : _currentIndex == 2
        ? Container(color: Colors.blue, child: Center(child: Text('Siparişler', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),))
        : _currentIndex == 3
        ? Container(color: Colors.lime, child: Center(child: Text('Adresler', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),))
        : Container(color: Colors.red, child: Center(child: Text('Sayfa Bulunamadı', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),),)
      )
     )
    ],
   ),
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.menu),
              title: Text("Hesap Hareketleri"),
              selectedColor: Colors.blueGrey.shade900,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.credit_card),
              title: Text("Yapılacak Tahsilatlar"),
              selectedColor: Colors.blueGrey.shade900,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.article_outlined),
              title: Text("Siparişler"),
              selectedColor: Colors.blueGrey.shade900,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.co_present_rounded),
              title: Text("Adresler"),
              selectedColor: Colors.blueGrey.shade900,
            ),
          ],
        ),
    );
  }
}