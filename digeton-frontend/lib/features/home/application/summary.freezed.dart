// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OffOfficeWithReplacement _$OffOfficeWithReplacementFromJson(
    Map<String, dynamic> json) {
  return _OffOfficeWithReplacement.fromJson(json);
}

/// @nodoc
mixin _$OffOfficeWithReplacement {
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  String? get replacement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffOfficeWithReplacementCopyWith<OffOfficeWithReplacement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffOfficeWithReplacementCopyWith<$Res> {
  factory $OffOfficeWithReplacementCopyWith(OffOfficeWithReplacement value,
          $Res Function(OffOfficeWithReplacement) then) =
      _$OffOfficeWithReplacementCopyWithImpl<$Res, OffOfficeWithReplacement>;
  @useResult
  $Res call({String? startDate, String? endDate, String? replacement});
}

/// @nodoc
class _$OffOfficeWithReplacementCopyWithImpl<$Res,
        $Val extends OffOfficeWithReplacement>
    implements $OffOfficeWithReplacementCopyWith<$Res> {
  _$OffOfficeWithReplacementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? replacement = freezed,
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
      replacement: freezed == replacement
          ? _value.replacement
          : replacement // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffOfficeWithReplacementImplCopyWith<$Res>
    implements $OffOfficeWithReplacementCopyWith<$Res> {
  factory _$$OffOfficeWithReplacementImplCopyWith(
          _$OffOfficeWithReplacementImpl value,
          $Res Function(_$OffOfficeWithReplacementImpl) then) =
      __$$OffOfficeWithReplacementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? startDate, String? endDate, String? replacement});
}

/// @nodoc
class __$$OffOfficeWithReplacementImplCopyWithImpl<$Res>
    extends _$OffOfficeWithReplacementCopyWithImpl<$Res,
        _$OffOfficeWithReplacementImpl>
    implements _$$OffOfficeWithReplacementImplCopyWith<$Res> {
  __$$OffOfficeWithReplacementImplCopyWithImpl(
      _$OffOfficeWithReplacementImpl _value,
      $Res Function(_$OffOfficeWithReplacementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? replacement = freezed,
  }) {
    return _then(_$OffOfficeWithReplacementImpl(
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      replacement: freezed == replacement
          ? _value.replacement
          : replacement // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffOfficeWithReplacementImpl implements _OffOfficeWithReplacement {
  const _$OffOfficeWithReplacementImpl(
      {this.startDate, this.endDate, this.replacement});

  factory _$OffOfficeWithReplacementImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffOfficeWithReplacementImplFromJson(json);

  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final String? replacement;

  @override
  String toString() {
    return 'OffOfficeWithReplacement(startDate: $startDate, endDate: $endDate, replacement: $replacement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffOfficeWithReplacementImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.replacement, replacement) ||
                other.replacement == replacement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate, replacement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OffOfficeWithReplacementImplCopyWith<_$OffOfficeWithReplacementImpl>
      get copyWith => __$$OffOfficeWithReplacementImplCopyWithImpl<
          _$OffOfficeWithReplacementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffOfficeWithReplacementImplToJson(
      this,
    );
  }
}

abstract class _OffOfficeWithReplacement implements OffOfficeWithReplacement {
  const factory _OffOfficeWithReplacement(
      {final String? startDate,
      final String? endDate,
      final String? replacement}) = _$OffOfficeWithReplacementImpl;

  factory _OffOfficeWithReplacement.fromJson(Map<String, dynamic> json) =
      _$OffOfficeWithReplacementImpl.fromJson;

  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  String? get replacement;
  @override
  @JsonKey(ignore: true)
  _$$OffOfficeWithReplacementImplCopyWith<_$OffOfficeWithReplacementImpl>
      get copyWith => throw _privateConstructorUsedError;
}
