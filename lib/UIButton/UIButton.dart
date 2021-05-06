import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../UIUtils.dart';
import '../models/UIButtonDefaults.dart';
import 'button_content.dart';

class UIButton {
  ///
  /// Outlined Button
  static Widget outlined({
    UIButtonDefaults as,
    String label,
    Color labelColor,
    Function onPressed,
    Color borderColor,
    Color bgColor,
    double borderRadius,
    double borderWidth,
    double elevation,
    double widthFactor,
    Widget icon,
  }) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.focused)) return Colors.black12;
            if (states.contains(MaterialState.hovered)) return Colors.black12;
            if (states.contains(MaterialState.pressed)) return Colors.black12;
            return null; // Defer to the widget's default.
          },
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return UIUtils.getColor(as, as?.bgColor, bgColor, Colors.blue);
          },
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              UIUtils.getDouble(as, as?.borderRadius, borderRadius, 0.0),
            ),
          ),
        ),
        side: MaterialStateProperty.resolveWith<BorderSide>(
          (Set<MaterialState> states) {
            return BorderSide(
              width: UIUtils.getDouble(as, as?.borderWidth, borderWidth, 2.0),
              color: UIUtils.getColor(as, as?.borderColor, borderColor, Colors.transparent),
            );
          },
        ),
      ),
      child: FractionallySizedBox(
        widthFactor: UIUtils.getDouble(as, as?.widthFactor, widthFactor, 1.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 6.0),
          child: UIButtonContent(as, label, labelColor, icon),
        ),
      ),
    );
  }

  ///
  /// Outlined Button
  static Widget solid({
    UIButtonDefaults as,
    String label,
    Color labelColor,
    Function onPressed,
    Color bgColor,
    double borderRadius,
    double elevation,
    double widthFactor,
    Widget icon,
  }) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.focused)) return Colors.black12;
            if (states.contains(MaterialState.hovered)) return Colors.black12;
            if (states.contains(MaterialState.pressed)) return Colors.black12;
            return null; // Defer to the widget's default.
          },
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            return UIUtils.getColor(as, as?.bgColor, bgColor, Colors.blue);
          },
        ),
        elevation: MaterialStateProperty.resolveWith<double>(
          (Set<MaterialState> states) {
            return UIUtils.getDouble(as, as?.elevation, elevation, 1.0);
          },
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              UIUtils.getDouble(as, as?.borderRadius, borderRadius, 0.0),
            ),
          ),
        ),
      ),
      child: FractionallySizedBox(
        widthFactor: UIUtils.getDouble(as, as?.widthFactor, widthFactor, 1.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: UIButtonContent(as, label, labelColor, icon),
        ),
      ),
    );
  }

  ///
  /// Native Buttons
  ///
  static Widget native({
    Function onPressed,
    String label,
    Color labelColor,
    Color bgColor,
    double widthFactor,
  }) {
    if (Platform.isIOS) {
      return FractionallySizedBox(
        widthFactor: widthFactor,
        child: CupertinoButton(
          color: bgColor,
          child: Text(
            label,
            style: TextStyle(
              color: labelColor,
            ),
          ),
          onPressed: onPressed,
        ),
      );
    } else {
      return FractionallySizedBox(
        widthFactor: widthFactor,
        child: TextButton(
          child: Text(
            label,
            style: TextStyle(
              color: labelColor ?? Colors.black,
            ),
          ),
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: bgColor,
          ),
        ),
      );
    }
  }
}
