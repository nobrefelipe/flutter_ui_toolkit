import 'package:flutter/material.dart';
import 'UIDefaults.dart';

class UIHeadingDefaults extends UIDefaults {
  UIHeadingDefaults({
    this.color,
    this.fontFamily,
    this.fontWeight,
  });

  final Color color;
  final FontWeight fontWeight;
  final String fontFamily;
}
