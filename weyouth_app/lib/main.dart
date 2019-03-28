import 'package:flutter/material.dart';
import 'theme.dart' as Theme;
import 'EntryPage.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //primarySwatch: Colors.white,
        primaryColor: Colors.white,
        primaryColorLight: Theme.Colors.activecolor,
        backgroundColor: Colors.grey[300],
        accentColor: Theme.Colors.activecolor,
        fontFamily: "PingFangSS",
      ),
      home: EntryPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AAA extends StatefulWidget {
  @override
  _AAAState createState() => _AAAState();
}

class _AAAState extends State<AAA> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(title:Text("Browser")),
      url: "https://google.com",
    );
  }
}




