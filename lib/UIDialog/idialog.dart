import 'package:flutter/material.dart';
import 'package:flutter_ui_toolkit/flutter_ui_toolkit.dart';
import '../models/UIAction.dart';

abstract class IDialog {
  Widget create(
    Widget title,
    Widget content,
    List<UIAction> actions,
  );
}
