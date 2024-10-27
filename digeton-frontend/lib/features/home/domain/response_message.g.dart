// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseMessageImpl _$$ResponseMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseMessageImpl(
      content: json['content'] as String,
      type: $enumDecodeNullable(_$MessageTypeEnumMap, json['type']) ??
          MessageType.text,
      originType:
          $enumDecodeNullable(_$SourceTypeEnumMap, json['originType']) ??
              SourceType.JIRA,
      senderAgentName: json['senderAgentName'] as String?,
      recipientAgentName: json['recipientAgentName'] as String?,
      runId: json['runId'] as String?,
    );

Map<String, dynamic> _$$ResponseMessageImplToJson(
        _$ResponseMessageImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'type': _$MessageTypeEnumMap[instance.type],
      'originType': _$SourceTypeEnumMap[instance.originType],
      'senderAgentName': instance.senderAgentName,
      'recipientAgentName': instance.recipientAgentName,
      'runId': instance.runId,
    };

const _$MessageTypeEnumMap = {
  MessageType.text: 'text',
  MessageType.status: 'status',
  MessageType.image: 'image',
  MessageType.interrupt: 'interrupt',
  MessageType.audio: 'audio',
  MessageType.tool_call: 'tool_call',
};

const _$SourceTypeEnumMap = {
  SourceType.JIRA: 'JIRA',
  SourceType.SLACK: 'SLACK',
  SourceType.GITHUB: 'GITHUB',
  SourceType.TEAMS: 'TEAMS',
};
