// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      text: ResponseMessage.fromJson(json['text'] as Map<String, dynamic>),
      isUser: json['isUser'] as bool,
      isTyping: json['isTyping'] as bool,
      isCode: json['isCode'] as bool,
      nodeId: json['nodeId'] as String?,
      nodeLabel: json['nodeLabel'] as String?,
      className: json['className'] as String?,
      references: (json['references'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'isUser': instance.isUser,
      'isTyping': instance.isTyping,
      'isCode': instance.isCode,
      'nodeId': instance.nodeId,
      'nodeLabel': instance.nodeLabel,
      'className': instance.className,
      'references': instance.references,
    };
