import 'package:flutter/material.dart';

class ScreenSize {
  static const int minScreenSizeThreshold = 1024;
  static const int minScreenSizeTabletThreshold = 768;

  static double determineWidth(BuildContext context) {
    var viewportWidth = MediaQuery.of(context).size.width;
    if (viewportWidth > minScreenSizeThreshold) {
      return 300.0;
    } else {
      return 0;
    }
  }

  static bool isLargeScreenDevice(BuildContext context) {
    var viewportWidth = MediaQuery.of(context).size.width;
    return viewportWidth >= minScreenSizeTabletThreshold;
  }
}
