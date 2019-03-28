import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
   /* return Scaffold(
        body: Builder(builder: (BuildContext context){
          return WebView(
            initialUrl: 'https://www.baidu.com/',
          );
        }),
    );*/
    return new WebviewScaffold(url: "https://www.google.com ",appBar: new AppBar(title: new Text("Widget webview"),),);
  }
}



