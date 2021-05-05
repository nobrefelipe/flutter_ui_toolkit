import 'dart:io';

import 'package:flutter/material.dart';
import './android_dialog.dart';
import './dialog_action.dart';
import './idialog.dart';
import './ios_dialog.dart';

class DialogFactory {
  static Future<T> showAlertDialog<T>(
    BuildContext context, {
    Widget title,
    Widget content,
    List<DialogAction> actions,
    bool forceAndroid = false,
    bool forceIos = false,
  }) {
    IDialog dialogData;

    if ((Platform.isIOS || forceIos) && !forceAndroid) {
      dialogData = IosDialog();
    } else if ((Platform.isAndroid || forceAndroid) && !forceIos) {
      dialogData = AndroidDialog();
    } else {
      dialogData = AndroidDialog();
    }

    return showDialog(
      context: context,
      builder: (context) => dialogData.create(
        context,
        title ?? Text('Untitled'),
        content ?? Text('Content missing.'),
        actions ?? [],
      ),
    );
  }
}
