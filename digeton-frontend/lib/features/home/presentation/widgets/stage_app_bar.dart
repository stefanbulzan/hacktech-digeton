import 'package:flutter/material.dart';
import 'package:hacktech_app/theme/theme.dart';
import 'package:hacktech_app/utils/build_context_extensions.dart';

class StackAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StackAppBar({
    required this.title,
    this.trailing,
    this.logoPath, // Specify your logo path here
    super.key,
    this.backButton,
  });

  final Widget? backButton;
  final String title;
  final Widget? trailing;
  final String? logoPath; // Add a property for the logo path

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colorScheme.primaryContainer,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 16,
        right: 16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          backButton ??
              const SizedBox(
                width: 32,
              ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (logoPath != null)
                  Image.asset(
                    logoPath!,
                    height: 36, // Adjust the size as needed
                    width: 36,
                  ),
                const SizedBox(width: 8), // Spacing between logo and title
                Text(
                  title,
                  style: context.textTheme.titleMedium,
                ),
              ],
            ),
          ),
          const Spacer(),
          trailing ??
              const SizedBox(
                width: 32,
              ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(defaultAppBarHeight);
}
