import 'package:flutter/material.dart';
import 'package:flutter_ui_toolkit/UITextField/UITextField.dart';
import 'package:flutter_ui_toolkit/models/UIButtonDefaults.dart';
import 'package:flutter_ui_toolkit/models/UIHeadingDefaults.dart';
import 'package:flutter_ui_toolkit/models/UITextFieldDefaults.dart';

///
/// Solid Button Styles
///
final solidButtonStyles = UIButtonDefaults(
  elevation: 15.0,
  borderRadius: 50.0,
  labelColor: Colors.white,
  bgColor: Colors.pink,
  widthFactor: 0.6,
);

///
/// Outlined Button Styles
///
final outlinedButtonStyles = UIButtonDefaults(
  elevation: 0.0,
  borderRadius: 50.0,
  labelColor: Colors.pink,
  bgColor: Colors.white,
  borderColor: Colors.pink,
  borderWidth: 2.0,
  widthFactor: 0.6,
);

///
/// Set Primary Input Styles
///
final primaryInput = UITextFieldDefaults(
  borderColor: Colors.black45,
  borderRadius: 8,
  borderType: UIBorderType.outlineBorder,
  borderWidth: 2.0,
  hintColor: Colors.black54,
  bgColor: Colors.white,
);

///
/// Set Small Title Styles
///
final smallTitle = UIHeadingDefaults(
  color: Colors.black54,
  heading: 6,
);
