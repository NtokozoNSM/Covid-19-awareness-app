import 'package:flutter/material.dart';
//import 'dart.io';
import 'package:webview_flutter/webview_flutter.dart';

class AffectedRegions extends StatefulWidget {
  const AffectedRegions({Key? key}) : super(key: key);

  @override
  _AffectedRegionsState createState() => _AffectedRegionsState();
}

class _AffectedRegionsState extends State<AffectedRegions> {
  //late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('World focus'),

      ),
      body: const WebView(
        initialUrl: 'https://www.worldometers.info/coronavirus/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}