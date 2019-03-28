import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'Adapt.dart';
import 'package:flutter/material.dart';

class Colors {

  const Colors();

  static const Color loginGradientStart = const Color(0xFFE1F5FE);
  static const Color loginGradientEnd = const Color(0xFF0277BD);
//粉色 0xFFf7418c 肉色0xFFfbab66
  static const Color activecolor = const Color.fromRGBO(79, 101, 225, 1);
  static const color = Color(0xFF303F9F);
  static const Color meetingbackgroundcolor = const Color.fromRGBO(67, 73, 96, 1);
  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

class Font{
  static const String fontFamily = "PingFangSC";
  static double fontSize_tab = Adapt.px(12.0);
  static FontWeight fontWeight_tab = FontWeight.w600;
}

class Icon{
  static double iconSize_bottomNavigationTab = Adapt.wpx(25.0);
}