import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hacktech_app/features/home/application/chat_notifier.dart';
import 'package:hacktech_app/utils/build_context_extensions.dart';

class ChatSendButtonWidget extends ConsumerWidget {
  const ChatSendButtonWidget({
    super.key,
    required String message,
    required TextEditingController controller,
    this.onTap,
  })  : _message = message,
        _controller = controller;

  final String _message;
  final TextEditingController _controller;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var chatState = ref.watch(chatNotifierProvider);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      child: IconButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          backgroundColor: WidgetStateProperty.all(
            _message.isNotEmpty
                ? context.colorScheme.primary
                : Colors.grey[600],
          ),
        ),
        icon: Icon(
          Icons.arrow_upward,
          size: 24,
          color: _message.isNotEmpty ? Colors.white : Colors.grey,
        ),
        onPressed: () {
          if (_message.isNotEmpty) {
            ref
                .read(chatNotifierProvider.notifier)
                .sendMessage(_controller.text);
            _controller.clear();
            onTap?.call();
          }
        },
      ),
    );
  }
}
