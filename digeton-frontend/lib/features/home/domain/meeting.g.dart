// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingImpl _$$MeetingImplFromJson(Map<String, dynamic> json) =>
    _$MeetingImpl(
      title: json['title'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      content: json['content'] as String,
      date: json['date'] as String?,
      duration: json['duration'] as String?,
    );

Map<String, dynamic> _$$MeetingImplToJson(_$MeetingImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'participants': instance.participants,
      'content': instance.content,
      'date': instance.date,
      'duration': instance.duration,
    };
