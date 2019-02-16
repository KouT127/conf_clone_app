import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'dart:async';

class WebView extends StatefulWidget {
  @override
  _WebViewState createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {

  final flutterWebViewPlugin = FlutterWebviewPlugin();
  StreamSubscription<String> _onUrlChanged;
  var title = '';

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: <Widget>[
          Expanded(child: WebviewScaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            url: 'https://www.google.co.jp/',
            withZoom: false,
            withJavascript: true,
            withLocalStorage: true,
            hidden: true,
            initialChild: Container(
              color: Colors.white,
              child: const Center(
                child: Text('Waiting.....'),
              ),
            ),
          ),)
        ],
      )
    );
  }

  @override
  void initState() {
    super.initState();

    flutterWebViewPlugin.close();

    _onUrlChanged = flutterWebViewPlugin.onUrlChanged.listen((url){
      title = url;
    });
  }

  @override
  void deactivate() {

    flutterWebViewPlugin.close();
    super.deactivate();
  }

  @override
  void dispose() {
    print('webview disposed');
    super.dispose();
  }
}
