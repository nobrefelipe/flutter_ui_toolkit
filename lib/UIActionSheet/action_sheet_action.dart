import 'package:flutter/material.dart';

class ActionSheetAction<T> {
  ActionSheetAction({
    @required this.child,
    @required this.onPressed,
  });

  T child;
  Function onPressed;
}
