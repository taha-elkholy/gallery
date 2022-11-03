import 'package:flutter/material.dart';

extension MediaQueryValues on BuildContext {
  double get height => MediaQuery.of(this).size.height;

  double get width => MediaQuery.of(this).size.width;

  bool get tabletSize =>
      MediaQuery.of(this).size.width > ScreenBreakPoints.tabletScreenSize;
}

class ScreenBreakPoints {
  static const double tabletScreenSize = 600;
}
