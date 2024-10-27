import 'dart:async';
import 'dart:convert';

import 'package:hacktech_app/features/home/application/chat_state.dart';
import 'package:hacktech_app/features/home/domain/prompt_model.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_repository.g.dart';

@riverpod
class ChatRepository extends _$ChatRepository {
  @override
  ChatState build() {
    return const ChatState();
  }

  Stream<String> getStreamResponse(PromptModel prompt) async* {
    final url = Uri.parse('https://hackday.loca.lt/knowledge');

    try {
      final request = http.Request('POST', url);
      request.headers.addAll({'Content-Type': 'application/json'});
      request.body = jsonEncode({'question': prompt.input});

      final response = await request.send();

      if (response.statusCode == 200) {
        final completeResponse =
            await response.stream.transform(utf8.decoder).join();
        final jsonData = jsonDecode(completeResponse);
        final text = jsonData['response'] as String;
        final references = jsonData['references'];
        final words = text.split(' ');

        // Stream one word at a time with the same references
        for (var i = 0; i < words.length; i++) {
          await Future.delayed(const Duration(milliseconds: 50));
          final chunk = {
            'response': words[i] + ' ',
            'references': references, // Pass references as is
          };
          yield jsonEncode(chunk);
        }
      } else {
        throw Exception(
            'Failed to get stream response: ${response.statusCode}');
      }
    } catch (e) {
      print('Error in getStreamResponseAPI: $e');
      throw e;
    }
  }
}
