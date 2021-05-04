import 'package:flutter/material.dart';
import 'package:flutter_ui_toolkit/UIUtils.dart';
import 'package:flutter_ui_toolkit/models/UIHeadingDefaults.dart';

class UIHeading extends StatelessWidget {
  const UIHeading({
    this.text,
    this.as,
    this.heading,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.overflow,
    this.fontFamily,
  });

  @required
  final String text;
  final UIHeadingDefaults as;
  final int heading;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: UIUtils.getColor(as, as?.color, color, Colors.black),
        fontSize: as?.fontSize ?? getHeadingSize(heading),
        fontWeight: as?.color ?? fontWeight ?? FontWeight.normal,
        fontFamily: as?.fontFamily ?? fontFamily ?? null,
      ),
      textAlign: textAlign ?? TextAlign.left,
      overflow: overflow,
    );
  }
}

///
/// Get Heading Size
///
double getHeadingSize(int h) {
  final Map sizes = {
    1: 28.0,
    2: 24.0,
    3: 22.0,
    4: 20.0,
    5: 18.0,
    6: 16.0,
  };

  return sizes[h] ?? 22.0;
}
