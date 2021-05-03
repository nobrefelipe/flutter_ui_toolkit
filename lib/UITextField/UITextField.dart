import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../UIUtils.dart';
import '../models/UITextFieldDefaults.dart';

class UITextField extends StatelessWidget {
  UITextField({
    this.as,
    this.hint,
    this.label,
    this.validator,
    this.borderRadius,
    this.borderType,
    this.borderColor,
    this.focusBorderColor,
    this.errorBorderColor,
    this.borderWidth,
    this.hintColor,
    this.labelColor,
    this.padding,
    this.obscureText,
    this.keyboardType,
    this.onChanged,
    this.onTap,
    this.controller,
    this.bgColor,
    this.floatingLabelBehavior,
    this.suffix,
  });

  @required
  final String hint;
  final String label;
  final UITextFieldDefaults as;
  final Function(String value) validator;
  final TextEditingController controller;
  final double borderRadius;
  final UIBorderType borderType;
  final Color borderColor;
  final Color focusBorderColor;
  final Color errorBorderColor;
  final double borderWidth;
  final Color hintColor;
  final Color labelColor;
  final double padding;
  final bool obscureText;
  final TextInputType keyboardType;
  final Function onChanged;
  final Function onTap;
  final Color bgColor;
  final FloatingLabelBehavior floatingLabelBehavior;
  final Widget suffix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      decoration: decoration,
      obscureText: obscureText ?? false,
      keyboardType: keyboardType,
      onChanged: onChanged,
      onTap: onTap,
      controller: controller,
    );
  }

  ///
  /// Native Text Fields
  ///
  static Widget native({
    String hint,
    String label,
    Color hintColor,
    double padding,
    Color bgColor,
    Color labelColor,
    Color borderColor,
    Color focusBorderColor,
    bool obscureText,
    Function onChanged,
    Widget suffix,
    TextInputType keyboardType,
    TextEditingController controller,
  }) {
    if (Platform.isIOS) {
      return iosTextField(
        hint,
        label,
        hintColor,
        padding,
        bgColor,
        labelColor,
        borderColor,
        focusBorderColor,
        obscureText,
        onChanged,
        suffix,
        keyboardType,
        controller,
      );
    } else {
      return androidTextField(
        hint,
        label,
        hintColor,
        padding,
        bgColor,
        labelColor,
        borderColor,
        focusBorderColor,
        obscureText,
        onChanged,
        suffix,
        keyboardType,
        controller,
      );
    }
  }

  ///
  ///  Input Decoration
  ///
  InputDecoration get decoration {
    return InputDecoration(
      enabledBorder: inputBorder(
        borderColor: UIUtils.getColor(as, as?.borderColor, borderColor, Colors.blue),
      ),
      focusedBorder: inputBorder(
        borderColor: UIUtils.getColor(as, as?.focusBorderColor, focusBorderColor, Colors.blue),
      ),
      errorBorder: inputBorder(
        borderColor: UIUtils.getColor(as, as?.errorBorderColor, errorBorderColor, Colors.red),
      ),
      fillColor: UIUtils.getColor(as, as?.bgColor, bgColor, Colors.transparent),
      filled: bgColor != null || as?.bgColor != null,
      errorStyle: TextStyle(color: Colors.red),
      contentPadding: EdgeInsets.all(padding ?? 20.0),
      hintText: hint,
      hintStyle: TextStyle(
        color: UIUtils.getColor(as, as?.hintColor, hintColor, Colors.black),
      ),
      labelText: label,
      labelStyle: TextStyle(
        color: UIUtils.getColor(as, as?.labelColor, labelColor, Colors.black),
      ),
      suffixIcon: suffix,
      floatingLabelBehavior: floatingLabelBehavior,
    );
  }

  ///
  /// Input Border Decoration
  ///
  InputBorder inputBorder({
    Color borderColor,
  }) {
    if (as?.borderType == UIBorderType.outlineBorder || borderType == UIBorderType.outlineBorder) {
      return OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            UIUtils.getDouble(as, as?.borderRadius, borderRadius, 4.0),
          ),
        ),
        borderSide: BorderSide(
          color: borderColor,
          width: UIUtils.getDouble(as, as?.borderWidth, borderWidth, 1.0),
        ),
      );
    } else if (as?.borderType == UIBorderType.underlineBorder || borderType == UIBorderType.underlineBorder) {
      return UnderlineInputBorder(
        borderSide: BorderSide(
          color: borderColor,
          width: UIUtils.getDouble(as, as?.borderWidth, borderWidth, 1.0),
        ),
      );
    } else {
      return null;
    }
  }
}

enum UIBorderType {
  outlineBorder,
  underlineBorder,
}

///
/// Android Text Field
///
TextFormField androidTextField(
  String hint,
  String label,
  Color hintColor,
  double padding,
  Color bgColor,
  Color labelColor,
  Color borderColor,
  Color focusBorderColor,
  bool obscureText,
  Function onChanged,
  Widget suffix,
  TextInputType keyboardType,
  TextEditingController controller,
) {
  return TextFormField(
    onChanged: onChanged,
    obscureText: obscureText ?? false,
    keyboardType: keyboardType,
    controller: controller,
    decoration: InputDecoration(
      fillColor: bgColor ?? Colors.transparent,
      filled: bgColor != null,
      suffixIcon: Padding(
        padding: EdgeInsets.only(right: padding ?? 10.0),
        child: suffix,
      ),
      contentPadding: EdgeInsets.all(padding ?? 10.0),
      hintText: hint,
      labelText: label,
      labelStyle: TextStyle(
        color: labelColor ?? Colors.black,
      ),
      hintStyle: TextStyle(
        color: hintColor ?? Colors.black,
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: borderColor ?? Colors.black,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: focusBorderColor ?? Colors.blue,
        ),
      ),
    ),
  );
}

///
/// iOS Text Field
///
CupertinoTextField iosTextField(
  String hint,
  String label,
  Color hintColor,
  double padding,
  Color bgColor,
  Color labelColor,
  Color borderColor,
  Color focusBorderColor,
  bool obscureText,
  Function onChanged,
  Widget suffix,
  TextInputType keyboardType,
  TextEditingController controller,
) {
  return CupertinoTextField(
    placeholder: hint,
    placeholderStyle: TextStyle(
      color: hintColor ?? Colors.black,
    ),
    padding: EdgeInsets.all(padding ?? 16.0),
    obscureText: obscureText ?? false,
    decoration: BoxDecoration(
      color: bgColor ?? Colors.white,
      border: Border.all(color: borderColor ?? Colors.black26),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    controller: controller,
    onChanged: onChanged,
    keyboardType: keyboardType,
    suffix: Padding(
      padding: EdgeInsets.only(right: padding ?? 16.0),
      child: suffix,
    ),
  );
}
