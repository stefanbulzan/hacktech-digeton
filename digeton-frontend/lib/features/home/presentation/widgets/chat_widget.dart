import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hacktech_app/features/home/application/chat_notifier.dart';
import 'package:hacktech_app/features/home/application/chat_state.dart';
import 'package:hacktech_app/features/home/domain/chat_message.dart';
import 'package:hacktech_app/router/app_router.dart';
import 'package:hacktech_app/utils/build_context_extensions.dart';
import 'package:hacktech_app/utils/markdown_github_stylesheet.dart';

class ChatWidget extends ConsumerStatefulWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends ConsumerState<ChatWidget> {
  final ScrollController _scrollController = ScrollController();
  bool _isScrolling = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToBottom();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chatState = ref.watch(chatNotifierProvider);
    final chatMessages = chatState.messages;
    final isLoading = chatState.isLoading;
    final isTyping = chatState.isTyping;

    ref.listen<ChatState>(chatNotifierProvider, (previous, next) {
      if (next.messages.length != previous?.messages.length ||
          next.isLoading != previous?.isLoading) {
        _scrollToBottom();
      }
    });

    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification is ScrollStartNotification) {
          _isScrolling = true;
        } else if (scrollNotification is ScrollEndNotification) {
          _isScrolling = false;
        }
        return true;
      },
      child: ListView.builder(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: const BouncingScrollPhysics(),
        controller: _scrollController,
        itemCount: chatMessages.length,
        itemBuilder: (context, index) {
          final chatMessage = chatMessages[index];
          final messageContent = chatMessage.text.content;

          // if (ref.watch(chatNotifierProvider).isLoading &&
          //     !ref.watch(chatNotifierProvider).messages[index].isUser) {
          //   return const LoadingCircle();
          // }

          return Container(
            margin: index == chatMessages.length - 1
                ? const EdgeInsets.only(bottom: 16)
                : EdgeInsets.zero,
            alignment: chatMessage.isUser
                ? Alignment.centerRight
                : Alignment.centerLeft,
            child: Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  margin: EdgeInsets.only(
                    top: index == 0 ? 32 : 0,
                    left: 8,
                    right: 8,
                    bottom: 32,
                  ),
                  decoration: BoxDecoration(
                    color: chatMessage.isUser
                        ? context.colorScheme.primary
                        : context.colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: chatMessage.isUser
                      ? Text(
                          chatMessage.text.content,
                          style: context.textTheme.bodyLarge?.copyWith(
                            color: context.colorScheme.onSurface,
                          ),
                        )
                      : _buildAIResponse(messageContent, chatMessage, context),
                ),
                if (chatMessage.references != null &&
                    chatMessage.references!.isNotEmpty &&
                    chatMessage.isTyping == false)
                  _buildButton(context, chatMessage),
              ],
            ),
          );
        },
      ),
    );
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients && !_isScrolling) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      });
    }
  }

  Widget _buildAIResponse(
      String messageContent, ChatMessage chatMessage, BuildContext context) {
    return Column(
      children: [
        if (messageContent.isNotEmpty)
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: MarkdownBody(
              data: messageContent,
              styleSheet: githubMarkdownDarkStyleSheet(context),
              selectable: true,
            ),
          ),
      ],
    );
  }

  Widget _buildButton(BuildContext context, ChatMessage chatMessage) {
    return Positioned(
      bottom: 15,
      right: 5,
      child: InkWell(
        onTap: () async {
          await ref
              .read(chatNotifierProvider.notifier)
              .getMeetingDetails(chatMessage.references!.first);
          context.pushNamed(AppRoute.meeting.name);
        },
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: const Offset(0, 1),
                  ),
                ],
                color: context.colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.article,
                    color: Colors.white.withOpacity(0.8),
                    size: 16,
                  ),
                  SizedBox(width: 6),
                  Text(
                    "Show References",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAudioMessage(ChatMessage chatMessage) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.mic,
          color: context.colorScheme.onSurface,
          size: 20,
        ),
        const SizedBox(width: 8),
        Text(
          'Audio Message',
          style: context.textTheme.bodyLarge?.copyWith(
            color: context.colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}

// final _chatMessages = [
//   ChatMessage(
//     text: ResponseMessage(content: 'Hello! How can I help you?'),
//     isUser: false,
//     isTyping: false,
//     isCode: false,
//   ),
//   ChatMessage(
//     text: ResponseMessage(
//         content: 'Hi! I wanted to learn about sustainable construction.'),
//     isUser: true,
//     isTyping: false,
//     isCode: false,
//   ),
//   ChatMessage(
//     text: ResponseMessage(
//         content:
//             'Sure! Sustainable construction involves using eco-friendly materials and energy-efficient techniques to reduce environmental impact.'),
//     isUser: false,
//     isTyping: false,
//     isCode: false,
//   ),
//   ChatMessage(
//     text: ResponseMessage(content: 'What are some popular materials used?'),
//     isUser: true,
//     isTyping: false,
//     isCode: false,
//   ),
//   ChatMessage(
//     text: ResponseMessage(
//         content:
//             'Some common materials include bamboo, recycled steel, and low-VOC paints. These materials are sustainable and have a lower carbon footprint than traditional options.'),
//     isUser: false,
//     isTyping: false,
//     isCode: false,
//     references: [
//       'Sustainable Building Materials Guide',
//       'Eco-Friendly Construction Practices'
//     ],
//   ),
//   ChatMessage(
//     text: ResponseMessage(
//         content: 'Thanks! Can you tell me about geothermal heating?'),
//     isUser: true,
//     isTyping: false,
//     isCode: false,
//   ),
//   ChatMessage(
//     text: ResponseMessage(
//         content:
//             'Certainly! Geothermal heating uses the earth\'s natural heat to warm buildings. It’s efficient and reduces greenhouse gas emissions.'),
//     isUser: false,
//     isTyping: false,
//     isCode: false,
//     references: [
//       'Geothermal Heating Basics',
//       'Benefits of Renewable Heating Systems'
//     ],
//   ),
// ];
