// ignore_for_file: prefer_const_constructors, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_denemeler/methods/images.dart';
import 'package:visual_effect/visual_effect.dart';

class VisualEffectPage extends StatefulWidget {
  const VisualEffectPage({super.key});

  @override
  State<VisualEffectPage> createState() => _VisualEffectPageState();
}

class _VisualEffectPageState extends State<VisualEffectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Visual Effect')),
      body: ListView.builder(
      itemCount: Images.imageThumbUrls.length,
      addRepaintBoundaries: false,
      itemBuilder: (context, index) {
        return _IndexScope(
          index: index,
          child: ScrollEffect(
      onGenerateVisualEffect: (effect, phase) {
        return effect
            .grayscale(phase.leadingLerp(to: 0.5))
            .scale(
              x: phase.isLeading
                  ? phase.leadingLerp(
                      from: 1,
                      to: 0.9,
                      curve: Curves.easeOut,
                    )
                  : 1,
              anchor: Alignment.topCenter,
            )
            .translate(y: effect.childSize.height * phase.leading);
      },
      child: Padding(
      padding:  EdgeInsets.all(16),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
        child:  SizedBox(
          height: 300, width: 400,
          child: Stack(
            children: [
              Positioned.fill(child: Image.network(Images.imageUrls[index], fit: BoxFit.cover,)),
              Center(child: Text("${index+1}. Resim", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),))
            ],
          )
          ),
      ),
    )
    )
        );
      },
    )
    );
  }
}



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

