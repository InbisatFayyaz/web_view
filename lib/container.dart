import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webViewContainer extends StatefulWidget {
  const webViewContainer({Key? key}) : super(key: key);

  @override
  State<webViewContainer> createState() => _webViewContainerState();
}

class _webViewContainerState extends State<webViewContainer> {
  late WebViewController controller;
  final _url = "https://flutter.dev";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Web View Container"),
      ),
      body: WebView(
        initialUrl: _url,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          controller = webViewController;
          controller.loadUrl(_url);  
        },
      ),
    );
  }
}



