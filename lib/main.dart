// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_denemeler/pages/route.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(Duration(seconds: 2));
  FlutterNativeSplash.remove();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale('tr', 'TR'),
      title: 'Flutter Demo',
       theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  RoutePage(),
    );
  }
}
