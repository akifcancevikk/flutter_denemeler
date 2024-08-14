// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_denemeler/methods/push_notificaation_service.dart';
import 'package:flutter_denemeler/pages/route.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
 // await NotificationHelper.initialize();
  HttpOverrides.global = MyHttpOverrides();
  await dotenv.load(fileName: ".env");

  // Flutter uygulamasını başlatmadan önce gerekli hazırlıkları yap
  WidgetsFlutterBinding.ensureInitialized();

  // Sistem çubuğu stilini ayarla
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ),
  );

  // Uygulama başlangıcında 2 saniye bekle
  await Future.delayed(Duration(seconds: 2));

  // Splash ekranını kaldır
  FlutterNativeSplash.remove();

  // Uygulamayı başlat
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale('tr', 'TR'),
      title: 'Flutter Demo',
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.resolveWith<Color>(
            (states) => Colors.red,
          ),
        ),
        textTheme: GoogleFonts.openSansCondensedTextTheme(textTheme).copyWith(),
        useMaterial3: false,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Color.fromARGB(255, 161, 11, 24)),
          titleTextStyle: GoogleFonts.glassAntiqua(
            textStyle: TextStyle(
              color: Color.fromARGB(255, 161, 11, 24),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0,
          centerTitle: true,
        ),
      ),
      home: RoutePage(),
    );
  }
}
