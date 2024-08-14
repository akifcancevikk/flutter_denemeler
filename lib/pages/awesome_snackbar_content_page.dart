// ignore_for_file: prefer_const_constructors

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

class AwesomeSnackbarContentPage extends StatefulWidget {
  const AwesomeSnackbarContentPage({super.key});

  @override
  State<AwesomeSnackbarContentPage> createState() => _AwesomeSnackbarContentPageState();
}

class _AwesomeSnackbarContentPageState extends State<AwesomeSnackbarContentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Awesome Snackbar Content Page'),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.red)
              ),
              child: const Text('Hata Mesajı', style: TextStyle(fontSize: 20),),
              onPressed: () {
                final snackBar = SnackBar(
                  duration: Duration(seconds: 4),
                  elevation: 0,
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.transparent,
                  content: AwesomeSnackbarContent(
                    title: 'Hata Oluştu!',
                    message:
                        'Oluşan hata konusunda yazılması gerekenler!!!',
                    contentType: ContentType.failure,
                  ),
                );

                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(snackBar);
              },
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.green)
              ),
              child: const Text('Başarılı Mesajı', style: TextStyle(fontSize: 20),),
              onPressed: () {
                final snackBar = SnackBar(
                  duration: Duration(seconds: 4),
                  elevation: 0,
                  behavior: SnackBarBehavior.fixed,
                  backgroundColor: Colors.transparent,
                  content: AwesomeSnackbarContent(
                    title: 'Başarılı!',
                    message:
                        'Başarılı bir eylem sonrası yazılması gerekenler!!!',
                    contentType: ContentType.success,
                  ),
                );

                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(snackBar);
              },
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.yellow.shade700)),
              child: const Text('Uyarı Mesajı', style: TextStyle(fontSize: 20),),
              onPressed: () {
                final snackBar = SnackBar(
                  duration: Duration(seconds: 4),
                  elevation: 0,
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.transparent,
                  content: AwesomeSnackbarContent(
                    title: 'Uyarı!',
                    message:
                        'Uyarı alınması durumunda yazılması gerekenler!!!',
                    contentType: ContentType.warning,
                  ),
                );

                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(snackBar);
              },
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue)
              ),
              child: const Text('Yardım Mesajı', style: TextStyle(fontSize: 20),),
              onPressed: () {
                final snackBar = SnackBar(
                  duration: Duration(seconds: 4),
                  elevation: 0,
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.transparent,
                  content: AwesomeSnackbarContent(
                    title: 'Uyarı!',
                    message:
                        'Yardım alınması durumunda yazılması gerekenler!!!',
                    contentType: ContentType.help,
                  ),
                );

                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(snackBar);
              },
            ),
          ],
        ),
      ),
    );
  }
}

