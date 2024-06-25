// ignore_for_file: prefer_const_constructors

import 'package:draggable_home/draggable_home.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DraggableHomePage extends StatefulWidget {
  const DraggableHomePage({super.key});

  @override
  State<DraggableHomePage> createState() => _DraggableHomePageState();
}

class _DraggableHomePageState extends State<DraggableHomePage> {
  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios)),
      title: const Text("Draggable Home"),
      // actions: [
      //   IconButton(onPressed: () {
      //   }, icon: const Icon(Icons.settings)),
      // ],
      headerWidget: headerWidget(context),
    //  headerBottomBar: headerBottomBarWidget(),
      body: [
        SizedBox(height: double.maxFinite, width: double.infinity,child: gridviewCountOrnegi()),
      ],
      fullyStretchable: true,
      backgroundColor: Colors.white,
      appBarColor: Colors.teal,
      expandedBody: Container(height: 10,),
    );
  }
}

Row headerBottomBarWidget() {
    return const Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.settings,
          color: Colors.green,
        ),
      ],
    );
  }

  Widget headerWidget(BuildContext context) {
    return Container(
      color: Color.fromRGBO(38, 50, 56, 1),
      child: Center(
        child: Text(
          "Title",
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: Colors.white70),
        ),
      ),
    );
  }

  ListView listView() {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 30,
      shrinkWrap: true,
      itemBuilder: (context, index) => ListTile(
        leading: CircleAvatar(
          child: Text("$index"),
        ),
        title: const Text("Title"),
        subtitle: const Text("Subtitle"),
      ),
    );
  }

GridView gridviewCountOrnegi() {
    return GridView.count(
      // reverse: en son elemanı en başa yazmayı sağlar
      // scroll yönünü ayarlar
      scrollDirection: Axis.vertical,
      // crossAxisCount: soldan sağa kaç tane eleman konulacağını belirtiyoruz.
      crossAxisCount: 2,
      // crossAxisSpacing: soldan sağa doğru sütunların arasındaki boşluk miktarı
      crossAxisSpacing: 5,
      // mainAxisSpacing: yukarıdan aşağı sütunlar arasındaki boşluk miktarı
      mainAxisSpacing: 5,
      // her bir elemanın çevresine verilen boşluk miktarı
      padding: const EdgeInsets.all(10),
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
      ],
    );
  }
