import 'dart:io';

import 'package:flutter/material.dart';
import './android_dialog.dart';
import './dialog_action.dart';
import './idialog.dart';
import './ios_dialog.dart';

///
/// Renders a dialog based on the [Platform] OS
///
class UIDialog {
  static Future<T> show<T>(
    BuildContext context, {
    Widget title,
    Widget content,
    List<DialogAction> actions,
    bool forceAndroid = false,
    bool forceIos = false,
  }) {
    ///
    /// Define a generic [IDialog]
    IDialog dialogData;

    ///
    /// [dialogData] will be either a [IosDialog] or [AndroidDialog]
    ///
    if ((Platform.isIOS || forceIos) && !forceAndroid) {
      dialogData = IosDialog();
    } else if ((Platform.isAndroid || forceAndroid) && !forceIos) {
      dialogData = AndroidDialog();
    } else {
      dialogData = AndroidDialog();
    }

    ///
    /// Show Dialog [dialogData]
    ///
    return showDialog(
      context: context,
      builder: (context) => dialogData.create(
        title ?? Text('Untitled'),
        content ?? Text('Content missing.'),
        actions ?? [],
      ),
    );
  }
}