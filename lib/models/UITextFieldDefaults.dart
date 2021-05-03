import 'dart:ui';

import '../flutter_ui_toolkit.dart';
import 'UIDefaults.dart';

class UITextFieldDefaults extends UIDefaults {
  final double borderRadius;
  final UIBorderType borderType;
  final Color borderColor;
  final Color focusBorderColor;
  final Color errorBorderColor;
  final double borderWidth;
  final Color hintColor;
  final double padding;
  final Color bgColor;
  final Color labelColor;

  UITextFieldDefaults({
    this.borderRadius,
    this.borderType,
    this.borderColor,
    this.focusBorderColor,
    this.errorBorderColor,
    this.borderWidth,
    this.hintColor,
    this.padding,
    this.bgColor,
    this.labelColor,
  });
}
