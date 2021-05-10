import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_toolkit/flutter_ui_toolkit.dart';
import '../models/UIAction.dart';
import './idialog.dart';

///
/// Creates a Cupertino dialog that implements [IDialog]
///
class IosDialog implements IDialog {
  @override
  Widget create(
    Widget title,
    Widget content,
    List<UIAction> actions,
  ) {
    return CupertinoAlertDialog(
      title: title,
      content: content,
      actions: actions.map<Widget>(
        (a) {
          return CupertinoButton(
            child: a.child,
            onPressed: a.onPressed as void Function(),
          );
        },
      ).toList(),
    );
  }
}
