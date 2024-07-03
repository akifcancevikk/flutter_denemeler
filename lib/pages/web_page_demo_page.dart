import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPageDemoPage extends StatefulWidget {
  const WebPageDemoPage({super.key});

  @override
  State<WebPageDemoPage> createState() => _WebPageDemoPageState();
}

class _WebPageDemoPageState extends State<WebPageDemoPage> {
  late WebViewController controller;
    @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      //! Uygulamamızda açılacak sayfa
      ..loadRequest(Uri.parse('https://uygulama.aktekweb.com/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //! AppBarda oluşan otomatik geri butonunu kaldırma
        automaticallyImplyLeading: true,
        //! AppBar titleı ortala
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          "WebView AppBar",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}