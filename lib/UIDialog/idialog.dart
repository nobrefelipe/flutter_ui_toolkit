import 'package:flutter/material.dart';
import './dialog_action.dart';

abstract class IDialog {
  Widget create(
    Widget title,
    Widget content,
    List<DialogAction> actions,
  );
}
