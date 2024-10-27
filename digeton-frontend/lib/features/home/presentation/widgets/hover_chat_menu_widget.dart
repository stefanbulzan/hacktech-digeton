import 'package:flutter/material.dart';
import 'package:hacktech_app/utils/build_context_extensions.dart';

class HoverChatMenu extends StatelessWidget {
  const HoverChatMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 16,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: context.colorScheme.primaryContainer,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 4,
              blurRadius: 12,
              offset: const Offset(0, 2),
            ),
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Row(
          children: [
            IconButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(EdgeInsets.zero),
                visualDensity: VisualDensity.compact,
              ),
              visualDensity: VisualDensity.compact,
              onPressed: () {},
              icon: const Icon(
                Icons.thumb_up_outlined,
                size: 14,
                color: Colors.white,
              ),
            ),
            IconButton(
              style: ButtonStyle(
                padding: WidgetStateProperty.all(EdgeInsets.zero),
                visualDensity: VisualDensity.compact,
              ),
              visualDensity: VisualDensity.compact,
              onPressed: () {},
              icon: const Icon(
                Icons.thumb_down_outlined,
                size: 14,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
