// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class FlutterWebViewPluginPage extends StatefulWidget {
  const FlutterWebViewPluginPage({super.key});

  @override
  State<FlutterWebViewPluginPage> createState() => _FlutterWebViewPluginPageState();
}

class _FlutterWebViewPluginPageState extends State<FlutterWebViewPluginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Flutter WebView Plugin Page'),),
      body: MaterialApp(
        routes: {
          "/": (_) => new WebviewScaffold(
            url: "https://www.youtube.com",
          ),
        },
      ),
    );
  }
}