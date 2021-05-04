import 'package:flutter/material.dart';
import 'UIDefaults.dart';

class UIHeadingDefaults extends UIDefaults {
  UIHeadingDefaults({
    this.color,
    this.fontFamily,
    this.fontWeight,
    this.fontSize,
  });

  final Color color;
  final FontWeight fontWeight;
  final String fontFamily;
  final double fontSize;
}
