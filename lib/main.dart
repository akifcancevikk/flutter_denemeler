// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_denemeler/pages/route.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.dark
  ));
  await Future.delayed(Duration(seconds: 2));
  FlutterNativeSplash.remove();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.outfitTextTheme(textTheme).copyWith(),
        useMaterial3: false,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true
        )
      ),
      debugShowCheckedModeBanner: false,
      locale: Locale('tr', 'TR'),
      title: 'Flutter Demo',
      home: RoutePage(),
    );
  }
}