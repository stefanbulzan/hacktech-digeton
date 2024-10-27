// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatMessage {
  ResponseMessage get text => throw _privateConstructorUsedError;
  bool get isUser => throw _privateConstructorUsedError;
  bool get isTyping => throw _privateConstructorUsedError;
  bool get isCode => throw _privateConstructorUsedError;
  String? get nodeId => throw _privateConstructorUsedError;
  String? get nodeLabel => throw _privateConstructorUsedError;
  String? get className => throw _privateConstructorUsedError;
  List<String>? get references => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res, ChatMessage>;
  @useResult
  $Res call(
      {ResponseMessage text,
      bool isUser,
      bool isTyping,
      bool isCode,
      String? nodeId,
      String? nodeLabel,
      String? className,
      List<String>? references});

  $ResponseMessageCopyWith<$Res> get text;
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res, $Val extends ChatMessage>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isUser = null,
    Object? isTyping = null,
    Object? isCode = null,
    Object? nodeId = freezed,
    Object? nodeLabel = freezed,
    Object? className = freezed,
    Object? references = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as ResponseMessage,
      isUser: null == isUser
          ? _value.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool,
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
      isCode: null == isCode
          ? _value.isCode
          : isCode // ignore: cast_nullable_to_non_nullable
              as bool,
      nodeId: freezed == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      nodeLabel: freezed == nodeLabel
          ? _value.nodeLabel
          : nodeLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      references: freezed == references
          ? _value.references
          : references // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseMessageCopyWith<$Res> get text {
    return $ResponseMessageCopyWith<$Res>(_value.text, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatMessageImplCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$$ChatMessageImplCopyWith(
          _$ChatMessageImpl value, $Res Function(_$ChatMessageImpl) then) =
      __$$ChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponseMessage text,
      bool isUser,
      bool isTyping,
      bool isCode,
      String? nodeId,
      String? nodeLabel,
      String? className,
      List<String>? references});

  @override
  $ResponseMessageCopyWith<$Res> get text;
}

/// @nodoc
class __$$ChatMessageImplCopyWithImpl<$Res>
    extends _$ChatMessageCopyWithImpl<$Res, _$ChatMessageImpl>
    implements _$$ChatMessageImplCopyWith<$Res> {
  __$$ChatMessageImplCopyWithImpl(
      _$ChatMessageImpl _value, $Res Function(_$ChatMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isUser = null,
    Object? isTyping = null,
    Object? isCode = null,
    Object? nodeId = freezed,
    Object? nodeLabel = freezed,
    Object? className = freezed,
    Object? references = freezed,
  }) {
    return _then(_$ChatMessageImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as ResponseMessage,
      isUser: null == isUser
          ? _value.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool,
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
      isCode: null == isCode
          ? _value.isCode
          : isCode // ignore: cast_nullable_to_non_nullable
              as bool,
      nodeId: freezed == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      nodeLabel: freezed == nodeLabel
          ? _value.nodeLabel
          : nodeLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      references: freezed == references
          ? _value._references
          : references // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageImpl implements _ChatMessage {
  const _$ChatMessageImpl(
      {required this.text,
      required this.isUser,
      required this.isTyping,
      required this.isCode,
      this.nodeId,
      this.nodeLabel,
      this.className,
      final List<String>? references})
      : _references = references;

  factory _$ChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageImplFromJson(json);

  @override
  final ResponseMessage text;
  @override
  final bool isUser;
  @override
  final bool isTyping;
  @override
  final bool isCode;
  @override
  final String? nodeId;
  @override
  final String? nodeLabel;
  @override
  final String? className;
  final List<String>? _references;
  @override
  List<String>? get references {
    final value = _references;
    if (value == null) return null;
    if (_references is EqualUnmodifiableListView) return _references;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatMessage(text: $text, isUser: $isUser, isTyping: $isTyping, isCode: $isCode, nodeId: $nodeId, nodeLabel: $nodeLabel, className: $className, references: $references)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isUser, isUser) || other.isUser == isUser) &&
            (identical(other.isTyping, isTyping) ||
                other.isTyping == isTyping) &&
            (identical(other.isCode, isCode) || other.isCode == isCode) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.nodeLabel, nodeLabel) ||
                other.nodeLabel == nodeLabel) &&
            (identical(other.className, className) ||
                other.className == className) &&
            const DeepCollectionEquality()
                .equals(other._references, _references));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      isUser,
      isTyping,
      isCode,
      nodeId,
      nodeLabel,
      className,
      const DeepCollectionEquality().hash(_references));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      __$$ChatMessageImplCopyWithImpl<_$ChatMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageImplToJson(
      this,
    );
  }
}

abstract class _ChatMessage implements ChatMessage {
  const factory _ChatMessage(
      {required final ResponseMessage text,
      required final bool isUser,
      required final bool isTyping,
      required final bool isCode,
      final String? nodeId,
      final String? nodeLabel,
      final String? className,
      final List<String>? references}) = _$ChatMessageImpl;

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$ChatMessageImpl.fromJson;

  @override
  ResponseMessage get text;
  @override
  bool get isUser;
  @override
  bool get isTyping;
  @override
  bool get isCode;
  @override
  String? get nodeId;
  @override
  String? get nodeLabel;
  @override
  String? get className;
  @override
  List<String>? get references;
  @override
  @JsonKey(ignore: true)
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
