import 'package:flutter/material.dart';
import 'action_sheet_action.dart';
import 'iaction_sheet.dart';

///
/// Creates a Android dialog that implements [IDialog]
///
class AndroidActionSheet implements IActionSheet {
  @override
  Widget create(
    BuildContext context,
    Widget title,
    Widget content,
    List<ActionSheetAction> actions,
    ActionSheetAction cancel,
  ) {
    return BottomSheet(
      onClosing: () {},
      builder: (_) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              title,
              const SizedBox(height: 10),
              content,
              const SizedBox(height: 40),
              Column(
                children: actions?.map(
                  (action) {
                    return _button(action);
                  },
                )?.toList(),
              ),
              _cancelButton(context, cancel),
            ],
          ),
        );
      },
    );
  }

  Widget _button(ActionSheetAction action) {
    return Column(
      children: [
        Divider(height: 1),
        MaterialButton(
          minWidth: double.infinity,
          padding: const EdgeInsets.all(20.0),
          child: action.child,
          onPressed: action.onPressed,
        ),
      ],
    );
  }

  Widget _cancelButton(BuildContext context, ActionSheetAction cancel) {
    return Column(
      children: [
        Divider(),
        MaterialButton(
          minWidth: double.infinity,
          padding: const EdgeInsets.all(20.0),
          child: cancel.child,
          onPressed: cancel.onPressed,
        ),
      ],
    );
  }
}
