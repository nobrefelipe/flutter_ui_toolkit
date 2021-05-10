import 'package:flutter/material.dart';
import 'package:flutter_ui_toolkit/models/UIContainerDefaults.dart';

import '../UIUtils.dart';

class UIContainer extends StatelessWidget {
  UIContainer({
    required this.child,
    this.as,
    this.color,
    this.padding,
    this.borderRadius,
    this.shadow,
    this.borderColor,
    this.borderWidth,
    this.widthFactor,
  });

  final Widget child;
  final UIContainerDefaults? as;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;
  final BoxShadow? shadow;
  final Color? borderColor;
  final double? borderWidth;
  final double? widthFactor;

  static BoxShadow defaultShadow = const BoxShadow(
    color: Color.fromRGBO(100, 100, 100, 0.30),
    blurRadius: 20,
  );

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: UIUtils.getDouble(as, as?.widthFactor, widthFactor, 1.0),
      child: Container(
        decoration: BoxDecoration(
          color: UIUtils.getColor(as, as?.color, color, Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(
              UIUtils.getDouble(as, as?.borderRadius, borderRadius, 0.0),
            ),
          ),
          border: Border.all(
            color: UIUtils.getColor(as, as?.borderColor, borderColor, Colors.transparent),
            width: UIUtils.getDouble(as, as?.borderWidth, borderWidth, 0.0),
          ),
          boxShadow: [
            UIUtils.getStyle(as, as?.shadow, shadow, defaultShadow),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            UIUtils.getDouble(as, as?.borderRadius, borderRadius, 0.0),
          ),
          child: Padding(
            padding: UIUtils.getStyle(as, as?.padding, padding, EdgeInsets.all(0.0)),
            child: child,
          ),
        ),
      ),
    );
  }
}
