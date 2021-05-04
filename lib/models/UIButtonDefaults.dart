import 'dart:ui';

import 'UIDefaults.dart';

class UIButtonDefaults extends UIDefaults {
  ///
  /// Sets the button's border color
  Color borderColor;

  ///
  /// Sets the button's border radius
  double borderRadius;

  ///
  /// Sets the button's border width
  double borderWidth;

  ///
  /// Sets the button's elevation
  double elevation;

  ///
  /// Sets the button's label color
  Color labelColor;

  ///
  /// Sets the button's background color
  Color bgColor;

  ///
  /// Sets the button's size percentage
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
