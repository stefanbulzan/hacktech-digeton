// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffOfficeWithContent _$OffOfficeWithContentFromJson(Map<String, dynamic> json) {
  return _OffOfficeWithContent.fromJson(json);
}

/// @nodoc
mixin _$OffOfficeWithContent {
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffOfficeWithContentCopyWith<OffOfficeWithContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffOfficeWithContentCopyWith<$Res> {
  factory $OffOfficeWithContentCopyWith(OffOfficeWithContent value,
          $Res Function(OffOfficeWithContent) then) =
      _$OffOfficeWithContentCopyWithImpl<$Res, OffOfficeWithContent>;
  @useResult
  $Res call({String? startDate, String? endDate, String? summary});
}

/// @nodoc
class _$OffOfficeWithContentCopyWithImpl<$Res,
        $Val extends OffOfficeWithContent>
    implements $OffOfficeWithContentCopyWith<$Res> {
  _$OffOfficeWithContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? summary = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffOfficeWithContentImplCopyWith<$Res>
    implements $OffOfficeWithContentCopyWith<$Res> {
  factory _$$OffOfficeWithContentImplCopyWith(_$OffOfficeWithContentImpl value,
          $Res Function(_$OffOfficeWithContentImpl) then) =
      __$$OffOfficeWithContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? startDate, String? endDate, String? summary});
}

/// @nodoc
class __$$OffOfficeWithContentImplCopyWithImpl<$Res>
    extends _$OffOfficeWithContentCopyWithImpl<$Res, _$OffOfficeWithContentImpl>
    implements _$$OffOfficeWithContentImplCopyWith<$Res> {
  __$$OffOfficeWithContentImplCopyWithImpl(_$OffOfficeWithContentImpl _value,
      $Res Function(_$OffOfficeWithContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? summary = freezed,
  }) {
    return _then(_$OffOfficeWithContentImpl(
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffOfficeWithContentImpl implements _OffOfficeWithContent {
  const _$OffOfficeWithContentImpl(
      {this.startDate, this.endDate, this.summary});

  factory _$OffOfficeWithContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffOfficeWithContentImplFromJson(json);

  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final String? summary;

  @override
  String toString() {
    return 'OffOfficeWithContent(startDate: $startDate, endDate: $endDate, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffOfficeWithContentImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate, summary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OffOfficeWithContentImplCopyWith<_$OffOfficeWithContentImpl>
      get copyWith =>
          __$$OffOfficeWithContentImplCopyWithImpl<_$OffOfficeWithContentImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffOfficeWithContentImplToJson(
      this,
    );
  }
}

abstract class _OffOfficeWithContent implements OffOfficeWithContent {
  const factory _OffOfficeWithContent(
      {final String? startDate,
      final String? endDate,
      final String? summary}) = _$OffOfficeWithContentImpl;

  factory _OffOfficeWithContent.fromJson(Map<String, dynamic> json) =
      _$OffOfficeWithContentImpl.fromJson;

  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  String? get summary;
  @override
  @JsonKey(ignore: true)
  _$$OffOfficeWithContentImplCopyWith<_$OffOfficeWithContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
