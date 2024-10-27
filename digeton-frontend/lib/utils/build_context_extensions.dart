import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  Size get screenSize => MediaQuery.of(this).size;
  void closeKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  void popDialog<T extends Object?>([T? result]) {
    Navigator.of(this).pop(result);
  }
}
