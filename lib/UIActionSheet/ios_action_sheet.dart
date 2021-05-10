import 'package:flutter/cupertino.dart';
import '../models/UIAction.dart';
import 'iaction_sheet.dart';

///
/// Creates a Cupertino dialog that implements [IDialog]
///
class IosActionSheet implements IActionSheet {
  @override
  Widget create(
    BuildContext context,
    Widget title,
    Widget content,
    List<UIAction> actions,
    UIAction? cancel,
  ) {
    return CupertinoActionSheet(
      title: title,
      message: content,
      cancelButton: CupertinoActionSheetAction(
        child: cancel!.child,
        isDefaultAction: true,
        onPressed: () {
          cancel.onPressed as void Function();
          Navigator.pop(context, 'Cancel');
        },
      ),
      actions: actions.map<Widget>(
        (a) {
          return CupertinoActionSheetAction(
            child: a.child,
            onPressed: a.onPressed as void Function(),
          );
        },
      ).toList(),
    );
  }
}
