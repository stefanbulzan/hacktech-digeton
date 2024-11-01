// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchFilter _$SearchFilterFromJson(Map<String, dynamic> json) {
  return _SearchFilter.fromJson(json);
}

/// @nodoc
mixin _$SearchFilter {
  String? get query => throw _privateConstructorUsedError;
  SearchFilterType? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchFilterCopyWith<SearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFilterCopyWith<$Res> {
  factory $SearchFilterCopyWith(
          SearchFilter value, $Res Function(SearchFilter) then) =
      _$SearchFilterCopyWithImpl<$Res, SearchFilter>;
  @useResult
  $Res call({String? query, SearchFilterType? type});
}

/// @nodoc
class _$SearchFilterCopyWithImpl<$Res, $Val extends SearchFilter>
    implements $SearchFilterCopyWith<$Res> {
  _$SearchFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SearchFilterType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchFilterImplCopyWith<$Res>
    implements $SearchFilterCopyWith<$Res> {
  factory _$$SearchFilterImplCopyWith(
          _$SearchFilterImpl value, $Res Function(_$SearchFilterImpl) then) =
      __$$SearchFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query, SearchFilterType? type});
}

/// @nodoc
class __$$SearchFilterImplCopyWithImpl<$Res>
    extends _$SearchFilterCopyWithImpl<$Res, _$SearchFilterImpl>
    implements _$$SearchFilterImplCopyWith<$Res> {
  __$$SearchFilterImplCopyWithImpl(
      _$SearchFilterImpl _value, $Res Function(_$SearchFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? type = freezed,
  }) {
    return _then(_$SearchFilterImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SearchFilterType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchFilterImpl implements _SearchFilter {
  const _$SearchFilterImpl({this.query, this.type});

  factory _$SearchFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchFilterImplFromJson(json);

  @override
  final String? query;
  @override
  final SearchFilterType? type;

  @override
  String toString() {
    return 'SearchFilter(query: $query, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFilterImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, query, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFilterImplCopyWith<_$SearchFilterImpl> get copyWith =>
      __$$SearchFilterImplCopyWithImpl<_$SearchFilterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchFilterImplToJson(
      this,
    );
  }
}

abstract class _SearchFilter implements SearchFilter {
  const factory _SearchFilter(
      {final String? query, final SearchFilterType? type}) = _$SearchFilterImpl;

  factory _SearchFilter.fromJson(Map<String, dynamic> json) =
      _$SearchFilterImpl.fromJson;

  @override
  String? get query;
  @override
  SearchFilterType? get type;
  @override
  @JsonKey(ignore: true)
  _$$SearchFilterImplCopyWith<_$SearchFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
