library flutter_ui_toolkit;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum UIButtonSize {
  auto,
  halfScreen,
  fullScreen,
}

enum UIButtonAppearance {
  solid,
  outlined,
}

/// UIButton
class UIButton extends StatelessWidget {
  UIButton({
    this.label,
    this.onTap,
    this.icon,
    this.alignment,
    this.borderRadius,
    this.labelColor,
    this.bgColor,
    this.borderColor,
    this.shadow,
    this.disabled = false,
    this.size = UIButtonSize.auto,
    this.appearance = UIButtonAppearance.solid,
  });

  @required
  final String label;
  @required
  final Function onTap;
  final Widget icon;
  final Alignment alignment;
  final double borderRadius;
  final Color bgColor;
  final Color labelColor;
  final Color borderColor;
  final bool disabled;
  final UIButtonSize size;
  final UIButtonAppearance appearance;
  final List<BoxShadow> shadow;

  @override
  Widget build(BuildContext context) {
    bool hasIcon = icon != null;

    return _buttonWrapper(
      context,
      child: hasIcon ? _buttonWithIcon(context) : _label(context),
    );
  }

  Widget _buttonWrapper(BuildContext context, {Widget child}) {
    ///
    /// Sets the button width based on [UIButtonSize]
    double _buttonWidth() {
      if (size == UIButtonSize.auto) {
        return null;
      } else if (size == UIButtonSize.halfScreen) {
        return MediaQuery.of(context).size.width / 2 - 16.0;
      } else if (size == UIButtonSize.fullScreen) {
        return double.infinity;
      } else {
        return null;
      }
    }

    /// Sets the button border based on [UIButtonAppearance]
    BoxBorder _buttonBorder() {
      if (appearance == UIButtonAppearance.solid) {
        return null;
      } else if (appearance == UIButtonAppearance.outlined) {
        return Border.all(
          width: 1.5,
          color: borderColor ?? Colors.black38,
        );
      } else {
        return null;
      }
    }

    return Column(
      children: [
        Align(
          alignment: alignment ?? Alignment.centerLeft,
          child: Opacity(
            opacity: disabled ? 0.4 : 1.0,
            // Wrap it with a Cointaner so we can put the shadow behind the Cupertino Button
            child: Container(
              decoration: BoxDecoration(
                boxShadow: shadow,
                borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 6.0)),
              ),
              child: CupertinoButton(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 6.0)),
                onPressed: !disabled ? onTap : null,
                color: bgColor ?? Colors.transparent,
                disabledColor: bgColor ?? Colors.transparent,
                padding: EdgeInsets.all(0.0),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    border: _buttonBorder(),
                    borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 6.0)),
                  ),
                  width: _buttonWidth(),
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buttonWithIcon(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: _label(context),
        ),
        icon,
      ],
    );
  }

  Widget _label(BuildContext context) {
    return UIHeading(
      label,
      color: labelColor ?? Theme.of(context).primaryColor,
      heading: 5,
      noMargin: true,
    );
  }
}

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
