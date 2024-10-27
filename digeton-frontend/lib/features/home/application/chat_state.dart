import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hacktech_app/features/home/application/summary.dart';
import 'package:hacktech_app/features/home/application/summary_content.dart';
import 'package:hacktech_app/features/home/domain/chat_message.dart';
import 'package:hacktech_app/features/home/domain/enums/chat_status_enum.dart';
import 'package:hacktech_app/features/home/domain/meeting.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    @Default([]) List<ChatMessage> messages,
    @Default(false) bool isLoading,
    @Default(false) bool isTyping,
    @Default(ChatStatus.None) ChatStatus status,
    String? errorMessage,
    String? threadId,
    OffOfficeWithContent? summary,
    OffOfficeWithReplacement? offOfficeWithReplacement,
    Meeting? meeting,
  }) = _ChatState;
}
