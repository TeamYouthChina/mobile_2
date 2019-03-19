import 'package:flutter/material.dart';
import 'login/login_page.dart';
import 'package:dim/dim.dart';
import 'package:flutter_appmineview/login/style/theme.dart' as Theme;
import 'dart:async';
import 'package:flutter/services.dart';

import 'RandomWords.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Dim dim = new Dim();


//  //dim login
//  Future<void> login(user,password,dim) async {
//    try {
//      var result = await dim.imLogin(1400184624, user, password);
//      print("login result:"+result);
//    } on PlatformException {
//      logout();
//      print("登录  失败");
//    }
//  }
//
//
//  Future<void> logout() async {
//    try {
//      var result = await dim.imLogout();
//      print(result);
//    } on PlatformException {
//      print("登出  失败");
//    }
//  }



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

//    String user="User1";
//    String password =
//        "eJxlz11PgzAUgOF7fgXprca1pRjwDvYFy4Yb8wO9aXAtrOpoLWUixv9uRI0k9vZ5T87pu2XbNrhabs-y3U42laHmTXFgX9gAgtM-VEowmhvqaPYPeauE5jQvDNc9Itd1MYTDRjBeGVGIn*K65hoNuGZPtN-xPU8gRB45x2SYiLLH1fRuHG-GEVLb*n4*qfz24Cfz4OHo*e2iafLkMmJ5Fr00z3JRRCrNgngfxN1s6u1Xa5SEJZMmVVE4uilfl104ORndytmaZI9kk6K0G15lxIH-fgg6LsbEGeiR61rIqg8wRC7CDvx6wPqwPgHzpVy7";
//
//    login(user, password, dim);


    return MaterialApp(
      title: 'YouthChina',
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
        primaryColor: Colors.white,
        primaryColorLight: Theme.Colors.activecolor,
        backgroundColor: Colors.grey[300],
        accentColor: Theme.Colors.activecolor,
        fontFamily: "PingFangSS",
      ),
      home: Center(
        child:
//        RandomWords(user: user,dim: dim,),
         LoginPage(
           dim: dim,
         ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

