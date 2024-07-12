// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';

class PdfGeneratorPage extends StatefulWidget {
  const PdfGeneratorPage({super.key});

  @override
  _PdfGeneratorPageState createState() => _PdfGeneratorPageState();
}

class _PdfGeneratorPageState extends State<PdfGeneratorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Oluştur ve Göster'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // PDF oluştur ve göster fonksiyonunu çağır
            await createAndShowPdf();
          },
          child: Text('PDF Oluştur'),
        ),
      ),
    );
  }

  Future<void> createAndShowPdf() async {
    try {
      // PDF oluşturma işlemleri
      final pdf = PdfDocument();
      final page = pdf.pages.add();

      // Metni PDF sayfasına ekleme
      const text = 'Merhaba, PDF! 3';
      final PdfFont font = PdfStandardFont(PdfFontFamily.helvetica, 12);
      page.graphics.drawString(
        text,
        font,
        bounds: Rect.fromLTWH(0, 0, page.getClientSize().width, page.getClientSize().height),
        brush: PdfSolidBrush(PdfColor(0, 0, 0)),
      );

      // PDF'i cihazda kaydetme
      final String dir = (await getApplicationDocumentsDirectory()).path;
      final String path = '$dir/example3.pdf';
      final File file = File(path);
      final List<int> bytes = await pdf.save(); // save() metodunu await ile bekletip dönen değeri List<int> türüne dönüştürüyoruz
      await file.writeAsBytes(bytes);

      if (kDebugMode) {
        print('PDF başarıyla oluşturuldu ve kaydedildi: $path');
      }

      // PDF'i açma
      await OpenFile.open(path); // Burada OpenFile paketini kullanarak PDF'i açıyoruz
    } catch (e) {
      if (kDebugMode) {
        print('Hata oluştu: $e');
      }
    }
  }
}
