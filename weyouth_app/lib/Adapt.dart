import 'package:flutter/material.dart';
import 'dart:ui';

class Adapt {
  static MediaQueryData mediaQuery = MediaQueryData.fromWindow(window);
  static double _width = mediaQuery.size.width;
  static double _height = mediaQuery.size.height;
  static double _topbarH = mediaQuery.padding.top;
  static double _botbarH = mediaQuery.padding.bottom;
  static double _pixelRatio = mediaQuery.devicePixelRatio;
  static var _ratio_w;
  static var _ratio_h;
  static init(int number_w, int number_h){
    int uiwidth = number_w is int ? number_w : 375;
    int uiheight = number_h is int ? number_h : 812;
    _ratio_w = _width / uiwidth;
    _ratio_h = _height / uiheight;
  }
  static px(number){
    if(!(_ratio_w is double || _ratio_w is int)){Adapt.init(375, 812);}
    return number * _ratio_w;
  }
  static wpx(number){
    if(!(_ratio_w is double || _ratio_w is int)){Adapt.init(375, 812);}
    return number * _ratio_w;
  }
  static hpx(number){
    if(!(_ratio_h is double || _ratio_h is int)){Adapt.init(375, 812);}
    return number * _ratio_h;
  }
  static onepx(){
    return 1/_pixelRatio;
  }
  static screenW(){
    return _width;
  }
  static screenH(){
    return _height;
  }
  static padTopH(){
    return _topbarH;
  }
  static padBotH(){
    return _botbarH;
  }
}