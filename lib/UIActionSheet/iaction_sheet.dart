import 'package:flutter/material.dart';
import '../models/UIAction.dart';

abstract class IActionSheet {
  Widget create(
    BuildContext context,
    Widget title,
    Widget content,
    List<UIAction> actions,
    UIAction? cancel,
  );
}
