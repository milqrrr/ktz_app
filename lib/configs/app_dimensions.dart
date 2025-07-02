import 'package:flutter/material.dart';

class AppDimensions {
  static double normalize(double value) {
    return value * SizeConfig.heightMultiplier!;
  }
}

class SizeConfig {
  static double? screenWidth;
  static double? screenHeight;
  static double? heightMultiplier;
  static double? widthMultiplier;

  void init(BuildContext context) {
    final size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    heightMultiplier = screenHeight! / 100;
    widthMultiplier = screenWidth! / 100;
  }
}
