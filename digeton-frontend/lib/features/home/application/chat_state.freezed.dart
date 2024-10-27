// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatState {
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isTyping => throw _privateConstructorUsedError;
  ChatStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get threadId => throw _privateConstructorUsedError;
  OffOfficeWithContent? get summary => throw _privateConstructorUsedError;
  OffOfficeWithReplacement? get offOfficeWithReplacement =>
      throw _privateConstructorUsedError;
  Meeting? get meeting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {List<ChatMessage> messages,
      bool isLoading,
      bool isTyping,
      ChatStatus status,
      String? errorMessage,
      String? threadId,
      OffOfficeWithContent? summary,
      OffOfficeWithReplacement? offOfficeWithReplacement,
      Meeting? meeting});

  $OffOfficeWithContentCopyWith<$Res>? get summary;
  $OffOfficeWithReplacementCopyWith<$Res>? get offOfficeWithReplacement;
  $MeetingCopyWith<$Res>? get meeting;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? isLoading = null,
    Object? isTyping = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? threadId = freezed,
    Object? summary = freezed,
    Object? offOfficeWithReplacement = freezed,
    Object? meeting = freezed,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChatStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      threadId: freezed == threadId
          ? _value.threadId
          : threadId // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as OffOfficeWithContent?,
      offOfficeWithReplacement: freezed == offOfficeWithReplacement
          ? _value.offOfficeWithReplacement
          : offOfficeWithReplacement // ignore: cast_nullable_to_non_nullable
              as OffOfficeWithReplacement?,
      meeting: freezed == meeting
          ? _value.meeting
          : meeting // ignore: cast_nullable_to_non_nullable
              as Meeting?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OffOfficeWithContentCopyWith<$Res>? get summary {
    if (_value.summary == null) {
      return null;
    }

    return $OffOfficeWithContentCopyWith<$Res>(_value.summary!, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OffOfficeWithReplacementCopyWith<$Res>? get offOfficeWithReplacement {
    if (_value.offOfficeWithReplacement == null) {
      return null;
    }

    return $OffOfficeWithReplacementCopyWith<$Res>(
        _value.offOfficeWithReplacement!, (value) {
      return _then(_value.copyWith(offOfficeWithReplacement: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MeetingCopyWith<$Res>? get meeting {
    if (_value.meeting == null) {
      return null;
    }

    return $MeetingCopyWith<$Res>(_value.meeting!, (value) {
      return _then(_value.copyWith(meeting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChatMessage> messages,
      bool isLoading,
      bool isTyping,
      ChatStatus status,
      String? errorMessage,
      String? threadId,
      OffOfficeWithContent? summary,
      OffOfficeWithReplacement? offOfficeWithReplacement,
      Meeting? meeting});

  @override
  $OffOfficeWithContentCopyWith<$Res>? get summary;
  @override
  $OffOfficeWithReplacementCopyWith<$Res>? get offOfficeWithReplacement;
  @override
  $MeetingCopyWith<$Res>? get meeting;
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? isLoading = null,
    Object? isTyping = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? threadId = freezed,
    Object? summary = freezed,
    Object? offOfficeWithReplacement = freezed,
    Object? meeting = freezed,
  }) {
    return _then(_$ChatStateImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChatStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      threadId: freezed == threadId
          ? _value.threadId
          : threadId // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as OffOfficeWithContent?,
      offOfficeWithReplacement: freezed == offOfficeWithReplacement
          ? _value.offOfficeWithReplacement
          : offOfficeWithReplacement // ignore: cast_nullable_to_non_nullable
              as OffOfficeWithReplacement?,
      meeting: freezed == meeting
          ? _value.meeting
          : meeting // ignore: cast_nullable_to_non_nullable
              as Meeting?,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl with DiagnosticableTreeMixin implements _ChatState {
  const _$ChatStateImpl(
      {final List<ChatMessage> messages = const [],
      this.isLoading = false,
      this.isTyping = false,
      this.status = ChatStatus.None,
      this.errorMessage,
      this.threadId,
      this.summary,
      this.offOfficeWithReplacement,
      this.meeting})
      : _messages = messages;

  final List<ChatMessage> _messages;
  @override
  @JsonKey()
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isTyping;
  @override
  @JsonKey()
  final ChatStatus status;
  @override
  final String? errorMessage;
  @override
  final String? threadId;
  @override
  final OffOfficeWithContent? summary;
  @override
  final OffOfficeWithReplacement? offOfficeWithReplacement;
  @override
  final Meeting? meeting;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatState(messages: $messages, isLoading: $isLoading, isTyping: $isTyping, status: $status, errorMessage: $errorMessage, threadId: $threadId, summary: $summary, offOfficeWithReplacement: $offOfficeWithReplacement, meeting: $meeting)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatState'))
      ..add(DiagnosticsProperty('messages', messages))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isTyping', isTyping))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('threadId', threadId))
      ..add(DiagnosticsProperty('summary', summary))
      ..add(DiagnosticsProperty(
          'offOfficeWithReplacement', offOfficeWithReplacement))
      ..add(DiagnosticsProperty('meeting', meeting));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isTyping, isTyping) ||
                other.isTyping == isTyping) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.threadId, threadId) ||
                other.threadId == threadId) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(
                    other.offOfficeWithReplacement, offOfficeWithReplacement) ||
                other.offOfficeWithReplacement == offOfficeWithReplacement) &&
            (identical(other.meeting, meeting) || other.meeting == meeting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      isLoading,
      isTyping,
      status,
      errorMessage,
      threadId,
      summary,
      offOfficeWithReplacement,
      meeting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {final List<ChatMessage> messages,
      final bool isLoading,
      final bool isTyping,
      final ChatStatus status,
      final String? errorMessage,
      final String? threadId,
      final OffOfficeWithContent? summary,
      final OffOfficeWithReplacement? offOfficeWithReplacement,
      final Meeting? meeting}) = _$ChatStateImpl;

  @override
  List<ChatMessage> get messages;
  @override
  bool get isLoading;
  @override
  bool get isTyping;
  @override
  ChatStatus get status;
  @override
  String? get errorMessage;
  @override
  String? get threadId;
  @override
  OffOfficeWithContent? get summary;
  @override
  OffOfficeWithReplacement? get offOfficeWithReplacement;
  @override
  Meeting? get meeting;
  @override
  @JsonKey(ignore: true)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
