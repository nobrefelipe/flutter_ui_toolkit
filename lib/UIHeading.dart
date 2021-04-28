import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget UIHeading(
  String text, {
  int heading,
  FontWeight fontWeight,
  Color color,
  bool noMargin = false,
  TextAlign textAlign = TextAlign.left,
  TextOverflow overflow,
}) {
  double fontSize;

  switch (heading) {
    case 1:
      fontSize = 28.0;
      break;
    case 2:
      fontSize = 24.0;
      break;
    case 3:
      fontSize = 22.0;
      break;
    case 4:
      fontSize = 20.0;
      break;
    case 5:
      fontSize = 18.0;
      break;
    case 6:
      fontSize = 16.0;
      break;
    default:
      fontSize = 22.0;
  }

  return Column(
    children: [
      Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
        textAlign: textAlign,
        overflow: overflow,
      ),
      SizedBox(height: noMargin ? 0.0 : 16.0),
    ],
  );
}
