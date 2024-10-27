import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hacktech_app/features/home/presentation/widgets/chat_send_button_widget.dart';
import 'package:hacktech_app/utils/build_context_extensions.dart';

class ChatTextField extends ConsumerStatefulWidget {
  const ChatTextField(this.focusNode, {super.key});

  final FocusNode focusNode;

  @override
  _ChatTextFieldState createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends ConsumerState<ChatTextField> {
  final _controller = TextEditingController();
  String _message = '';
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _controller.dispose();
    widget.focusNode.removeListener(_onFocusChange);
    super.dispose();
  }

  void _onFocusChange() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          _isExpanded = widget.focusNode.hasFocus;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    final isKeyboardVisible = bottomInset > 0;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        border: // only top border
            Border(
          top: BorderSide(
            color: context.colorScheme.onSurface.withOpacity(0.2),
          ),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      margin: EdgeInsets.only(
        bottom: isKeyboardVisible ? bottomInset + 8 : 24,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextField(
                  minLines: 1,
                  maxLines: 6,
                  focusNode: widget.focusNode,
                  controller: _controller,
                  onTap: () {
                    if (!_isExpanded) {
                      setState(() {
                        _isExpanded = true;
                      });
                    }
                  },
                  onChanged: (value) {
                    setState(() {
                      _message = value;
                    });
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Ask your AI Assistant',
                    hintStyle: context.textTheme.titleSmall!.copyWith(
                      color: context.colorScheme.onSurface.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
            ],
          ),
          if (_isExpanded)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(width: 8),
                  ChatSendButtonWidget(
                    message: _message,
                    controller: _controller,
                    onTap: () {
                      widget.focusNode.unfocus();
                      setState(() {
                        _isExpanded = false;
                      });
                    },
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
