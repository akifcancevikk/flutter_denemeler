// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_denemeler/pages/route.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
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
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: WidgetStatePropertyAll(Colors.red),
        ),
        textTheme: GoogleFonts.glassAntiquaTextTheme(textTheme).copyWith(),
        useMaterial3: false,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Color.fromARGB(255, 161, 11, 24)),
          titleTextStyle: GoogleFonts.glassAntiqua(
    textStyle: TextStyle(color: Color.fromARGB(255, 161, 11, 24), fontSize: 30, fontWeight: FontWeight.bold),
  ),
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