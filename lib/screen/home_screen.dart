import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('NyaNyaRaeng'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                if (controller != null) {
                  controller!.loadUrl('https://blog.naver.com/nauurr');
                }
              },
              icon: Icon(
                Icons.home,
              ))
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
        initialUrl: 'https://blog.naver.com/nauurr',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
