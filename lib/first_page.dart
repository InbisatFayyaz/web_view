import 'package:flutter/material.dart';
import 'package:web_view/container.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webView extends StatefulWidget {
  const webView({super.key});

  @override
  State<webView> createState() => _webViewState();
}

class _webViewState extends State<webView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Web View"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.of(context).pushNamed('/webviewcontainer');
          // Navigator.push(context, MaterialPageRoute(
          //   builder: (context)=>webViewcontainer())); 
        },
         child: Text("click for Web View")),
      )
    );
  }
}
