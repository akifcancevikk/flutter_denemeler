import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
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
              child: const Text('Show Awesome SnackBar'),
              onPressed: () {
                final snackBar = SnackBar(
                  duration: Duration(seconds: 4),
                  elevation: 0,
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.transparent,
                  content: AwesomeSnackbarContent(
                    title: 'On Snap!',
                    message:
                        'This is an example error message that will be shown in the body of snackbar!',
                    contentType: ContentType.failure,
                  ),
                );

                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(snackBar);
              },
            ),
            const SizedBox(height: 10),

          ],
        ),
      ),
    );
  }
}

