import 'package:flutter/material.dart';
import 'package:hacktech_app/theme/theme.dart';
import 'package:hacktech_app/utils/build_context_extensions.dart';

class WidgetUtils {
  static InputDecoration getDecorations(
    BuildContext context,
    IconData? icon, {
    String? hintText,
  }) {
    return InputDecoration(
      isDense: true,
      fillColor: context.colorScheme.onSurfaceVariant,
      filled: false,
      hintText: hintText,
      hintStyle: context.textTheme.titleMedium!.copyWith(
        color: context.colorScheme.outline,
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(Insets.small),
        ),
      ),
    );
  }
}
