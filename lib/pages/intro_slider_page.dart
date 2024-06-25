// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroSliderPage extends StatefulWidget {
  const IntroSliderPage({super.key});

  @override
  State<IntroSliderPage> createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  List<ContentConfig> listContentConfig = [];

   @override
  void initState() {
    super.initState();

    listContentConfig.add(
      const ContentConfig(
        title: "Biz Profesyoneliz", styleTitle: TextStyle(color: Colors.black),
        
        description:
            "Sektörün en deneyimli ekibi ve güçlü markalarıyla hizmet sunuyoruz.",
            styleDescription:TextStyle(color: Colors.black),
        pathImage: "assets/logo.jpg",
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "Biz Tecrübeliyiz!",
        styleTitle: TextStyle(color: Colors.black),
        description:
            "Akdemir Global 30'u aşkın ülkede 3000'i aşkın ürün çeşidiyle profesyonel çözüm ortaklığı sunar.",
            styleDescription:TextStyle(color: Colors.black),
        pathImage: "assets/logo.jpg",
      ),
    );
    listContentConfig.add(
      const ContentConfig(
        title: "Mükemmel Lojistik Hizmetleri",
        styleTitle: TextStyle(color: Colors.black),
        description:
            "Mükemmel lojistik sistemimiz ve ürün stoklarımızla hızlı ve doğru hizmet sunuyoruz.",
            styleDescription:TextStyle(color: Colors.black),
        pathImage: "assets/logo.jpg",
      ),
    );
  }

  void onDonePress() {
    log("End of slides" as num);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(centerTitle: true, title: Text('Intro Slider Page'),),
      body: Center(
        child: IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: () => Navigator.pop(context),
    ),
      ),  
    );
  }
}