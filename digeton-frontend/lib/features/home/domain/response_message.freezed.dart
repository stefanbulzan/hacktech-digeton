// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseMessage _$ResponseMessageFromJson(Map<String, dynamic> json) {
  return _ResponseMessage.fromJson(json);
}

/// @nodoc
mixin _$ResponseMessage {
  String get content => throw _privateConstructorUsedError;
  MessageType? get type => throw _privateConstructorUsedError;
  SourceType? get originType => throw _privateConstructorUsedError;
  String? get senderAgentName => throw _privateConstructorUsedError;
  String? get recipientAgentName => throw _privateConstructorUsedError;
  String? get runId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseMessageCopyWith<ResponseMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseMessageCopyWith<$Res> {
  factory $ResponseMessageCopyWith(
          ResponseMessage value, $Res Function(ResponseMessage) then) =
      _$ResponseMessageCopyWithImpl<$Res, ResponseMessage>;
  @useResult
  $Res call(
      {String content,
      MessageType? type,
      SourceType? originType,
      String? senderAgentName,
      String? recipientAgentName,
      String? runId});
}

/// @nodoc
class _$ResponseMessageCopyWithImpl<$Res, $Val extends ResponseMessage>
    implements $ResponseMessageCopyWith<$Res> {
  _$ResponseMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? type = freezed,
    Object? originType = freezed,
    Object? senderAgentName = freezed,
    Object? recipientAgentName = freezed,
    Object? runId = freezed,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType?,
      originType: freezed == originType
          ? _value.originType
          : originType // ignore: cast_nullable_to_non_nullable
              as SourceType?,
      senderAgentName: freezed == senderAgentName
          ? _value.senderAgentName
          : senderAgentName // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientAgentName: freezed == recipientAgentName
          ? _value.recipientAgentName
          : recipientAgentName // ignore: cast_nullable_to_non_nullable
              as String?,
      runId: freezed == runId
          ? _value.runId
          : runId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseMessageImplCopyWith<$Res>
    implements $ResponseMessageCopyWith<$Res> {
  factory _$$ResponseMessageImplCopyWith(_$ResponseMessageImpl value,
          $Res Function(_$ResponseMessageImpl) then) =
      __$$ResponseMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content,
      MessageType? type,
      SourceType? originType,
      String? senderAgentName,
      String? recipientAgentName,
      String? runId});
}

/// @nodoc
class __$$ResponseMessageImplCopyWithImpl<$Res>
    extends _$ResponseMessageCopyWithImpl<$Res, _$ResponseMessageImpl>
    implements _$$ResponseMessageImplCopyWith<$Res> {
  __$$ResponseMessageImplCopyWithImpl(
      _$ResponseMessageImpl _value, $Res Function(_$ResponseMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? type = freezed,
    Object? originType = freezed,
    Object? senderAgentName = freezed,
    Object? recipientAgentName = freezed,
    Object? runId = freezed,
  }) {
    return _then(_$ResponseMessageImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType?,
      originType: freezed == originType
          ? _value.originType
          : originType // ignore: cast_nullable_to_non_nullable
              as SourceType?,
      senderAgentName: freezed == senderAgentName
          ? _value.senderAgentName
          : senderAgentName // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientAgentName: freezed == recipientAgentName
          ? _value.recipientAgentName
          : recipientAgentName // ignore: cast_nullable_to_non_nullable
              as String?,
      runId: freezed == runId
          ? _value.runId
          : runId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseMessageImpl implements _ResponseMessage {
  const _$ResponseMessageImpl(
      {required this.content,
      this.type = MessageType.text,
      this.originType = SourceType.JIRA,
      this.senderAgentName,
      this.recipientAgentName,
      this.runId});

  factory _$ResponseMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseMessageImplFromJson(json);

  @override
  final String content;
  @override
  @JsonKey()
  final MessageType? type;
  @override
  @JsonKey()
  final SourceType? originType;
  @override
  final String? senderAgentName;
  @override
  final String? recipientAgentName;
  @override
  final String? runId;

  @override
  String toString() {
    return 'ResponseMessage(content: $content, type: $type, originType: $originType, senderAgentName: $senderAgentName, recipientAgentName: $recipientAgentName, runId: $runId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseMessageImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.originType, originType) ||
                other.originType == originType) &&
            (identical(other.senderAgentName, senderAgentName) ||
                other.senderAgentName == senderAgentName) &&
            (identical(other.recipientAgentName, recipientAgentName) ||
                other.recipientAgentName == recipientAgentName) &&
            (identical(other.runId, runId) || other.runId == runId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, type, originType,
      senderAgentName, recipientAgentName, runId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseMessageImplCopyWith<_$ResponseMessageImpl> get copyWith =>
      __$$ResponseMessageImplCopyWithImpl<_$ResponseMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseMessageImplToJson(
      this,
    );
  }
}

abstract class _ResponseMessage implements ResponseMessage {
  const factory _ResponseMessage(
      {required final String content,
      final MessageType? type,
      final SourceType? originType,
      final String? senderAgentName,
      final String? recipientAgentName,
      final String? runId}) = _$ResponseMessageImpl;

  factory _ResponseMessage.fromJson(Map<String, dynamic> json) =
      _$ResponseMessageImpl.fromJson;

  @override
  String get content;
  @override
  MessageType? get type;
  @override
  SourceType? get originType;
  @override
  String? get senderAgentName;
  @override
  String? get recipientAgentName;
  @override
  String? get runId;
  @override
  @JsonKey(ignore: true)
  _$$ResponseMessageImplCopyWith<_$ResponseMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
