import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenWidth2;
  static double? screenWidth3;
  static double? screenWidth4;
  static double? screenWidth4_2;
  static double? screenWidth5;
  static double? screenWidth6;
  static double? screenHeight;
  static double? screenHeightHalf;
  static double? screenHeightHalf2;
  static double? screenHeightHalf2_1;
  static double? screenHeightHalf2_2;
  static double? screenHeightHalf3;
  static double? screenHeightHalf4;
  static double? screenHeightHalf5;
  static double? screenHeightHalf5_2;
  static double? screenHeightHalf6;
  static double? blockSizeHorizontal;
  static double? blockSizeHorizontal2;
  static double? blockSizeVertical;
  static double? blockSizeVertical2;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenWidth2 = _mediaQueryData!.size.width / 2;
    screenWidth3 = _mediaQueryData!.size.width / 3;
    screenWidth4 = _mediaQueryData!.size.width / 4;
    screenWidth4_2 = _mediaQueryData!.size.width / 8;
    screenWidth5 = _mediaQueryData!.size.width / 10;
    screenWidth6 = _mediaQueryData!.size.width / 20;



    screenHeight = _mediaQueryData!.size.height;
    screenHeightHalf = _mediaQueryData!.size.height / 2;
    screenHeightHalf2 = _mediaQueryData!.size.height / 2.2;
    screenHeightHalf2_1 = _mediaQueryData!.size.height / 2.5;
    screenHeightHalf2_2 = _mediaQueryData!.size.height / 3;
    screenHeightHalf3 = _mediaQueryData!.size.height / 4;
    screenHeightHalf4 = _mediaQueryData!.size.height / 6;
    screenHeightHalf5 = _mediaQueryData!.size.height / 10;
    screenHeightHalf5_2 = _mediaQueryData!.size.height / 15;
    screenHeightHalf6 = _mediaQueryData!.size.height / 20;

    blockSizeHorizontal = screenWidth! / 100;
    blockSizeHorizontal2 = screenWidth! / 150;
    blockSizeVertical = screenHeight! / 100;
    blockSizeVertical2 = screenHeight! / 200;
  }
}
