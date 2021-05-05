import 'package:flutter/cupertino.dart';
import './dialog_action.dart';
import './idialog.dart';

class IosDialog implements IDialog {
  @override
  Widget create(
    BuildContext context,
    Widget title,
    Widget content,
    List<DialogAction> actions,
  ) {
    return CupertinoAlertDialog(
      title: title,
      content: content,
      actions: actions?.map<Widget>((a) {
        return CupertinoButton(
          child: a.child,
          onPressed: a.onPressed,
        );
      })?.toList(),
    );
  }
}
