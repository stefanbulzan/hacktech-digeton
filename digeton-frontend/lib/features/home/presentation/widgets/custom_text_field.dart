import 'package:flutter/material.dart';
import 'package:hacktech_app/theme/theme.dart';
import 'package:hacktech_app/utils/build_context_extensions.dart';
import 'package:hacktech_app/utils/widget_utils.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.label,
    required this.hint,
    required this.icon,
    required this.controller,
    super.key,
    this.enabled,
    this.onChanged,
    this.validator,
    this.onTapOutside,
    this.focusNode,
    this.borderColor,
    this.obscureText = false,
    this.suffixIcon,
    this.keyboardType,
  });

  final String? label;
  final String hint;
  final IconData? icon;
  final TextEditingController? controller;
  final bool? enabled;
  final void Function(String)? onChanged;
  final void Function()? onTapOutside;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final Color? borderColor;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style: context.textTheme.titleSmall!.copyWith(
              color: context.colorScheme.onSurface,
            ),
          ),
        const SizedBox(height: Insets.small),
        TextFormField(
          keyboardType: keyboardType,
          obscureText: obscureText,
          focusNode: focusNode ?? FocusNode(),
          enabled: enabled ?? true,
          style: context.textTheme.titleMedium!.copyWith(
            color: context.colorScheme.onSurface,
          ),
          onChanged: onChanged,
          onEditingComplete: onTapOutside,
          controller: controller ?? TextEditingController(),
          decoration: WidgetUtils.getDecorations(context, icon, hintText: hint)
              .copyWith(
            suffixIcon: suffixIcon,
            errorStyle: context.textTheme.bodySmall!.copyWith(
              color: context.colorScheme.error,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: borderColor ?? context.colorScheme.primary,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: borderColor ?? Colors.transparent,
              ),
            ),
          ),
          validator: validator ??
              (value) {
                if (value == null || value.isEmpty) {
                  return 'This field cannot be empty';
                }
                return null;
              },
        ),
      ],
    );
  }
}
