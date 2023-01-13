import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';


import '../../../common/common_libs.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({Key? key}) : super(key: key);

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();

  late WebViewController controller;

  @override
  void initState() {
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
      ..loadRequest(Uri.parse('https://flutter.dev'));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: WebViewWidget(controller: controller),
        floatingActionButton: FutureBuilder<WebViewController>(
          future: _controller.future,
          builder: (BuildContext context,
              AsyncSnapshot<WebViewController> controller) {
            if (controller.hasData) {
              return FloatingActionButton(
                onPressed: () {
                  controller.data?.loadRequest(Uri.parse("https://flutter.dev"));
                },
                child: Icon(Icons.refresh),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
