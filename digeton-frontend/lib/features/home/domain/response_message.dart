import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hacktech_app/features/home/domain/enums/message_type_enum.dart';
import 'package:hacktech_app/features/home/domain/enums/source_type.dart';

part 'response_message.freezed.dart';
part 'response_message.g.dart';

@freezed
class ResponseMessage with _$ResponseMessage {
  const factory ResponseMessage({
    required String content,
    @Default(MessageType.text) MessageType? type,
    @Default(SourceType.JIRA) SourceType? originType,
    String? senderAgentName,
    String? recipientAgentName,
    String? runId,
  }) = _ResponseMessage;

  factory ResponseMessage.fromJson(Map<String, dynamic> json) =>
      _$ResponseMessageFromJson(json);
}
