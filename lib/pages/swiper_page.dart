// ignore_for_file: prefer_const_constructors

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_denemeler/methods/images.dart';

class SwiperPage extends StatefulWidget {
  const SwiperPage({super.key});

  @override
  State<SwiperPage> createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(centerTitle: true, title: Text('Swiper Page'),),
       body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 70.0),
          child: Swiper(
            itemHeight: 200,
            itemWidth: 300.0,
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(Images.imageUrls[index], fit: BoxFit.fill,));
            },
            itemCount: Images.imageUrls.length,
            layout: SwiperLayout.STACK,
          ),
        ),
       ), 
    );
  }
}