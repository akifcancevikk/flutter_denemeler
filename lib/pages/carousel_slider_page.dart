// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselSliderPage extends StatefulWidget {
  const CarouselSliderPage({super.key});

  @override
  State<CarouselSliderPage> createState() => _CarouselSliderPageState();
}

class _CarouselSliderPageState extends State<CarouselSliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Carousel Slider Page'),),
      body: Center(
        child: CarouselSlider(
           options: CarouselOptions(
            height: 400,
            aspectRatio: 16/9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            onPageChanged: (index, reason) {},
            scrollDirection: Axis.horizontal,
             ),
          items: [
            'https://cdn1.ntv.com.tr/gorsel/HVnpnKwRKEex4_6utLLnGw.jpg?width=1000&mode=crop&scale=both',
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiKJnWyuNmm_cFeB454rzIq1wgjcNrTwDH8A&s',
            'https://www.ozenduvarkagidi.com.tr/images/urunler/100_doga-manz-6822_1.jpg',
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0uJtHk5103HczU1icv1-2mMO8WKGvrwjeUA&s'
            ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent
                  ),
                  child: Image(image: NetworkImage('$i'), fit: BoxFit.cover,)
                );
              },
            );
          }).toList(),
          
        ),
      ),
    );
  }
}