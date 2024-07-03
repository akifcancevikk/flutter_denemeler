// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_denemeler/images.dart';

class DraggableHomePageDemoPage extends StatefulWidget {
  const DraggableHomePageDemoPage({super.key});

  @override
  State<DraggableHomePageDemoPage> createState() => _DraggableHomePageDemoPageState();
}

class _DraggableHomePageDemoPageState extends State<DraggableHomePageDemoPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(centerTitle: true, title: Text('Draggable Home Page Demo Page'), backgroundColor: Colors.transparent,),
      body: Stack(
        children: [
          Container(
            height: height * 0.36,
            width: width,
            color: Colors.red,
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.7,
            minChildSize: 0.7,
            maxChildSize: 1.0,
            builder: (context, scrollController) {
            return Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))
              ),
              child: GridView.builder(
                controller: scrollController,
      itemCount: Images.imageUrls.length,
      padding: const EdgeInsets.all(5),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 250),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Container(
              height: 150,
              width: 165,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                    Images.imageUrls[index]
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Ürün Adı şamdlşanmdandpadnpadpşadpadn',
                  maxLines: 2,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Stok Kodu',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "12232",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
            ),
          
            ),
            Divider(thickness: 1, indent: 8, endIndent: 8,)
          ],
        );
      })
            );
          },)
        ],
      ),
    );
  }
}


// _IndexScope(
//                         index: index,
//                         child: ScrollEffect(
//                     onGenerateVisualEffect: (effect, phase) {
//                       return effect
//               .grayscale(phase.leadingLerp(to: 0.5))
//               .scale(
//                 x: phase.isLeading
//                     ? phase.leadingLerp(
//                         from: 1,
//                         to: 0.9,
//                         curve: Curves.easeOut,
//                       )
//                     : 1,
//                 anchor: Alignment.topCenter,
//               )
//               .translate(y: effect.childSize.height * phase.leading);
//                     },
//                     child: Padding(
//                     padding:  EdgeInsets.all(16),
//                     child: Container(
//                       clipBehavior: Clip.antiAlias,
//                       decoration: ShapeDecoration(
//                         color: Colors.white,
//                         shape:  RoundedRectangleBorder(
//               borderRadius: BorderRadius.all(Radius.circular(16)),
//                         ),
//                       ),
//                       child:  SizedBox(
//                         height: 300, width: 400,
//                         child: Stack(
//               children: [
//                 Positioned.fill(child: Image.network(Images.imageUrls[index], fit: BoxFit.cover,)),
//                 Center(child: Text("${index+1}. Resim", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),))
//               ],
//                         )
//                         ),
//                     ),
//                   )
//                   )
//                       );







class _IndexScope extends InheritedWidget {
  const _IndexScope({
    required this.index,
    required super.child,
  });

  final int index;

  static int of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<_IndexScope>();
    return scope?.index ?? 0;
  }

  @override
  bool updateShouldNotify(_IndexScope oldWidget) {
    return oldWidget.index != index;
  }
}
