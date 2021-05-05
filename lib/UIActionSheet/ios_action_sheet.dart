import 'package:flutter/cupertino.dart';
import 'action_sheet_action.dart';
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
    List<ActionSheetAction> actions,
    ActionSheetAction cancel,
  ) {
    return CupertinoActionSheet(
      title: title,
      message: content,
      cancelButton: CupertinoActionSheetAction(
        child: cancel.child,
        isDefaultAction: true,
        onPressed: () => Navigator.pop(context, 'Cancel'),
      ),
      actions: actions?.map<Widget>(
        (a) {
          return CupertinoActionSheetAction(
            child: a.child,
            onPressed: a.onPressed,
          );
        },
      )?.toList(),
    );
  }
}
