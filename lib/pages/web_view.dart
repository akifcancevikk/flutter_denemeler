import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:ui' as ui; // Platform view için gerekli
import 'dart:html' as html; // HTML iframe için gerekli

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Web View Page'),
      ),
      body: kIsWeb ? WebViewWeb() : WebViewMobile(),
    );
  }
}

class WebViewMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://advisor.akdemirglobal.com/forgotpassword/'))
    );
  }
}

class WebViewWeb extends StatefulWidget {
  @override
  _WebViewWebState createState() => _WebViewWebState();
}

class _WebViewWebState extends State<WebViewWeb> {
  @override
  void initState() {
    super.initState();
    // Register the view factory for the web platform.
    ui.platformViewRegistry.registerViewFactory(
      'web-view',
      (int viewId) => html.IFrameElement()
        ..src = 'https://advisor.akdemirglobal.com/forgotpassword/'
        ..style.border = 'none',
    );
  }

  @override
  Widget build(BuildContext context) {
    return HtmlElementView(viewType: 'web-view');
  }
}
