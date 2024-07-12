// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter_denemeler/save_and_open_pdf.dart';
import 'package:pdf/widgets.dart';

class SimplePdfApi{
  static Future<File> generateSimpleTextPdf(String text, String text2) async {
    final pdf = Document();

    pdf.addPage(
      Page(
        build: (_)=>Center(
          child: Column(
            children: [
              Text(text, style: TextStyle(fontSize: 48)),
              Text(text2, style: TextStyle(fontSize: 48)),
            ],
          )
        )
      ),
    );
    return SaveAndOpenDocument.savePdf(name: 'simple_pdf.pdf', pdf: pdf);
  }
}