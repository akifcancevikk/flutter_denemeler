// ignore_for_file: prefer_const_constructors

import 'package:draggable_home/draggable_home.dart';
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
        listView()
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

GridView gridviewBuilderOrnegi() {
    return GridView.builder(
      shrinkWrap: true,
      primary: true,
      
      // eleman sayısı
      itemCount: 100,
      // elemanlara her yerden 5 oranında boşluk ver
      padding: const EdgeInsets.all(5),
      // yan yana eleman sayısı
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          alignment: Alignment.center,
          color: Colors.teal[100 * ((index + 1) % 8)],
          child: const Text("GridView Örneği"),
        );
      });
  }
