import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'android_action_sheet.dart';
import 'action_sheet_action.dart';
import 'iaction_sheet.dart';
import 'ios_action_sheet.dart';

///
/// Renders a dialog based on the [Platform] OS
///
class UIActionSheet {
  static Future<T?> show<T>(
    BuildContext context, {
    Widget? title,
    Widget? content,
    List<ActionSheetAction>? actions,
    ActionSheetAction? cancel,
    bool forceAndroid = false,
    bool forceIos = false,
  }) {
    ///
    /// Define a generic [IDialog]
    IActionSheet dialogData;

    ///
    /// [dialogData] will be either a [IosDialog] or [AndroidDialog]
    ///
    if ((Platform.isIOS || forceIos) && !forceAndroid) {
      dialogData = IosActionSheet();
    } else if ((Platform.isAndroid || forceAndroid) && !forceIos) {
      dialogData = AndroidActionSheet();
    } else {
      dialogData = AndroidActionSheet();
    }

    ///
    /// Show Dialog [dialogData]
    ///
    return showCupertinoModalPopup(
      context: context,
      builder: (context) => dialogData.create(
        context,
        title ?? Text('Untitled'),
        content ?? Text('Content missing.'),
        actions ?? [],
        cancel,
      ),
    );
  }
}
