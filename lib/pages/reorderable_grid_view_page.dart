// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_this, sort_child_properties_last

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:reorderable_grid_view/reorderable_grid_view.dart';

// class ReorderableGridViewPage extends StatefulWidget {
//   const ReorderableGridViewPage({super.key});

//   @override
//   State<ReorderableGridViewPage> createState() => _ReorderableGridViewPageState();
// }

// class _ReorderableGridViewPageState extends State<ReorderableGridViewPage> {
//   final items = [
//     Item("ReorderableGrid.count", () => const DemoReorderableGrid()),
//     Item("Custom", () => const DemoCustom()),
//     Item("Remove Drag Shadow", () => const DemoRemoveShadow()),
//     Item("InCorrect Offset", () => const DemoInCorrectOffset()),
//     Item("Sliver Grid", () => const DemoGridSliver()),
//     Item("Item Rebuild", () => const DemoItemRebuild()),
//     Item("Enable", () => const DemoEnable()),
//     Item("PageView", () => const DemoPageView()),
//     Item("Nested router", () => Navigator(
//       initialRoute: "/",
//       onGenerateRoute: (RouteSettings settings) {
//         late WidgetBuilder builder;
//         switch (settings.name) {
//           case '/':
//             builder = (context) => const DemoReorderableGrid();
//             break;
//         }
//         return MaterialPageRoute(builder: builder);
//     },))
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(centerTitle: true, title: Text('Reorderable Grid View Page'),),
//       body: ListView.builder(
//                 itemCount: items.length,
//                 itemBuilder: (context, index) {
//                   var item = items[index];
//                   return InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => Scaffold(
//                                       appBar: AppBar(
//                                         title: Text(item.name),
//                                       ),
//                                       body: item.next(),
//                                     )));
//                       },
//                       child: ListTile(title: Text(item.name)));
//                 })
//     );
//   }
// }

// Widget buildItem(String text) {
//       return Card(
//         key: ValueKey(text),
//         child: Text(text),
//       );
//     }

//     class DemoCustom extends StatefulWidget {
//   const DemoCustom({Key? key}) : super(key: key);

//   @override
//   State<DemoCustom> createState() => _DemoCustomState();
// }

// /// Wrap child in ReorderableWrapperWidget and
// /// reorderable item in ReorderableItemView
// class _DemoCustomState extends State<DemoCustom> {
//   final data = List<int>.generate(50, (index) => index);

//   @override
//   Widget build(BuildContext context) {
//     return Overlay(
//       initialEntries: [
//         OverlayEntry(
//             builder: (builder) => ReorderableWrapperWidget(
//                   child: GridView.builder(
//                       gridDelegate:
//                           const SliverGridDelegateWithFixedCrossAxisCount(
//                               crossAxisCount: 3),
//                       itemCount: data.length * 2,
//                       itemBuilder: (context, index) {
//                         if (index % 2 == 0) {
//                           return const Card(
//                             color: Colors.black12,
//                             child: Text("Sticky"),
//                           );
//                         } else {
//                           var indexForReorderable = (index / 2).floor();
//                           var itemData = data[indexForReorderable];
//                           return ReorderableItemView(
//                               key: ValueKey(indexForReorderable),
//                               index: indexForReorderable,
//                               child: Card(
//                                 child: Text("R $itemData"),
//                               ));
//                         }
//                       }),
//                   // the drag and drop index is from (index passed to ReorderableItemView)
//                   onReorder: (dragIndex, dropIndex) {
//                     setState(() {
//                       var item = data.removeAt(dragIndex);
//                       data.insert(dropIndex, item);
//                     });
//                   },
//                 ))
//       ],
//     );
//   }
// }