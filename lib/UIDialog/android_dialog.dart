import 'package:flutter/material.dart';
import '../models/UIAction.dart';
import './idialog.dart';

///
/// Creates a Android dialog that implements [IDialog]
///
class AndroidDialog implements IDialog {
  @override
  Widget create(
    Widget title,
    Widget content,
    List<UIAction> actions,
  ) {
    return AlertDialog(
      title: title,
      content: content,
      actions: actions.map(
        (a) {
          return TextButton(
            child: a.child,
            onPressed: a.onPressed as void Function(),
          );
        },
      ).toList(),
    );
  }
}
