import 'dart:convert';

import 'package:hacktech_app/features/home/application/chat_repository.dart';
import 'package:hacktech_app/features/home/application/chat_state.dart';
import 'package:hacktech_app/features/home/application/summary.dart';
import 'package:hacktech_app/features/home/application/summary_content.dart';
import 'package:hacktech_app/features/home/domain/chat_message.dart';
import 'package:hacktech_app/features/home/domain/enums/chat_status_enum.dart';
import 'package:hacktech_app/features/home/domain/enums/message_type_enum.dart';
import 'package:hacktech_app/features/home/domain/meeting.dart';
import 'package:hacktech_app/features/home/domain/prompt_model.dart';
import 'package:hacktech_app/features/home/domain/response_message.dart';
import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_notifier.g.dart';

@Riverpod(keepAlive: true)
class ChatNotifier extends _$ChatNotifier {
  @override
  ChatState build() {
    return const ChatState();
  }

  void sendMessage(String text, {MessageType type = MessageType.text}) {
    if (text.isEmpty) return;

    final userMessage = ChatMessage(
      text: ResponseMessage(content: text, type: type),
      isUser: true,
      isTyping: false,
      isCode: false,
    );

    state = state.copyWith(
      messages: [...state.messages, userMessage],
      isLoading: true,
    );

    if (type == MessageType.text || type == MessageType.audio) {
      var prompt = PromptModel(input: text, threadId: state.threadId);
      getStreamResponse(prompt);
    } else {
      state = state.copyWith(isLoading: false);
    }
  }

  void getStreamResponse(PromptModel prompt) {
    final aiMessage = ChatMessage(
      text: ResponseMessage(content: '', type: MessageType.text),
      isUser: false,
      isTyping: true,
      isCode: false,
    );

    state = state.copyWith(
      messages: [...state.messages, aiMessage],
      status: ChatStatus.Receiving,
      isTyping: true,
    );

    onFlowStarted.call();

    ref.read(chatRepositoryProvider.notifier).getStreamResponse(prompt).listen(
      (chunk) {
        _handleStreamResponse(chunk);
      },
      onError: (error) {
        print('Error in getStreamResponse: $error');
        state = state.copyWith(
          errorMessage: error.toString(),
          isLoading: false,
          isTyping: false,
        );
      },
      onDone: () {
        _updateLastMessage((message) => message.copyWith(isTyping: false));
        state = state.copyWith(
          isLoading: false,
          isTyping: false,
          status: ChatStatus.None,
        );
        onFlowCompleted.call();
      },
    );
  }

  void _handleStreamResponse(String chunk) {
    try {
      final jsonData = jsonDecode(chunk);
      final response = jsonData['response'] as String;
      // Handle references whether it's a string or list
      final references = jsonData['references'] is String
          ? [jsonData['references'] as String]
          : (jsonData['references'] as List?)?.cast<String>() ?? [];

      _updateLastMessage((message) {
        final updatedContent = message.text.content + response;
        return message.copyWith(
          text: message.text.copyWith(
            content: updatedContent,
            type: MessageType.text,
          ),
          references: references,
          isTyping: true,
        );
      });
    } catch (e) {
      print('Error parsing JSON chunk: $e');
    }
  }

  Future<void> getOutOfOfficeDetails(String name) async {
    final url =
        Uri.parse("https://hackday.loca.lt/knowledge/ooo/summary?name=$name");

    try {
      final response = await get(url);

      if (response.statusCode == 200) {
        // Successfully received a response
        final data = jsonDecode(response.body);
        final summary = OffOfficeWithContent.fromJson(data);
        state = state.copyWith(summary: summary);
        print("Out of Office Details: $summary");
      } else {
        // Handle non-200 status code
        print("Failed to load data. Status code: ${response.statusCode}");
      }
    } catch (e) {
      // Handle exceptions
      print("Error occurred: $e");
    }
  }

  Future<void> getOutOfOfficeDetails2(String name) async {
    final url = Uri.parse("https://hackday.loca.lt/knowledge/ooo?name=$name");

    try {
      final response = await get(url);

      if (response.statusCode == 200) {
        // Successfully received a response
        final data = jsonDecode(response.body);
        final summary = OffOfficeWithReplacement.fromJson(data);
        state = state.copyWith(offOfficeWithReplacement: summary);
        print("Out of Office Details: $summary");
      } else {
        // Handle non-200 status code
        print("Failed to load data. Status code: ${response.statusCode}");
      }
    } catch (e) {
      // Handle exceptions
      print("Error occurred: $e");
    }
  }

  Future<Meeting?> getMeetingDetails(String title) async {
    final url = Uri.parse("https://hackday.loca.lt/meetings?title=$title");

    try {
      final response = await get(url);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body).first;
        print("Meeting Details: $data");
        // Parse the JSON response into a Meeting object
        final meeting = Meeting.fromJson(data);
        state = state.copyWith(meeting: meeting);
      } else {
        print(
            "Failed to load meeting details. Status code: ${response.statusCode}");
        return null;
      }
    } catch (e) {
      print("Error occurred: $e");
      return null;
    }
  }

  void _updateLastMessage(ChatMessage Function(ChatMessage) update) {
    final messages = [...state.messages];
    if (messages.isNotEmpty && !messages.last.isUser) {
      messages[messages.length - 1] = update(messages.last);
      state = state.copyWith(messages: messages);
    }
  }

  void onFlowStarted() {}

  void onFlowCompleted() {}
}

// Update ChatRepository to include streaming
