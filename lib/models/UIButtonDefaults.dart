import 'dart:ui';

import 'UIDefaults.dart';

class UIButtonDefaults extends UIDefaults {
  Color borderColor;
  double borderRadius;
  double borderWidth;
  double elevation;
  Color labelColor;
  Color bgColor;
  double widthFactor;

  UIButtonDefaults({
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.elevation,
    this.labelColor,
    this.bgColor,
    this.widthFactor,
  });
}
