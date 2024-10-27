import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hacktech_app/features/home/domain/response_message.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@Freezed()
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required ResponseMessage text,
    required bool isUser,
    required bool isTyping,
    required bool isCode,
    String? nodeId,
    String? nodeLabel,
    String? className,
    final List<String>? references,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}
