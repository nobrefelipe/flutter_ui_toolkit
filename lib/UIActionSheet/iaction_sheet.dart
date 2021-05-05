import 'package:flutter/material.dart';
import 'action_sheet_action.dart';

abstract class IActionSheet {
  Widget create(
    BuildContext context,
    Widget title,
    Widget content,
    List<ActionSheetAction> actions,
    ActionSheetAction cancel,
  );
}
