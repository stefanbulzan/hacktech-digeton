import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hacktech_app/features/home/application/chat_notifier.dart';
import 'package:hacktech_app/features/home/presentation/suggestions_widget.dart';
import 'package:hacktech_app/features/home/presentation/widgets/chat_text_field.dart';
import 'package:hacktech_app/features/home/presentation/widgets/chat_widget.dart';
import 'package:hacktech_app/utils/build_context_extensions.dart';

class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen>
    with SingleTickerProviderStateMixin {
  final FocusNode _focusNode = FocusNode();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chatMessages =
        ref.watch(chatNotifierProvider.select((state) => state.messages));

    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      body: Column(
        children: [
          Expanded(
            child: chatMessages.isEmpty ? SuggestionsWidget() : ChatWidget(),
          ),
          ChatTextField(_focusNode),
        ],
      ),
    );
  }
}
