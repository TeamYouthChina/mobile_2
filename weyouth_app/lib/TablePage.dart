import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TablePage extends StatefulWidget {
  @override
  _TablePageState createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return new WebView(initialUrl: "https://www.youtube.com",);
  }
}
