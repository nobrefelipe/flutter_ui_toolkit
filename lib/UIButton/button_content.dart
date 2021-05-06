import 'package:flutter/material.dart';

import '../UIUtils.dart';
import '../flutter_ui_toolkit.dart';

///
/// Button Content
///
// ignore: non_constant_identifier_names
Widget UIButtonContent(
    UIButtonDefaults? as, String? label, Color? labelColor, Widget? icon) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Center(
          child: UIButtonLabel(as, label, labelColor),
        ),
      ),
      icon ?? SizedBox.shrink(),
    ],
  );
}

///
/// Button Label
///
// ignore: non_constant_identifier_names
Widget UIButtonLabel(UIButtonDefaults? as, String? label, Color? labelColor) {
  return UIHeading(
    text: label,
    color: UIUtils.getColor(as, as?.labelColor, labelColor, Colors.blue),
    heading: 6,
  );
}
