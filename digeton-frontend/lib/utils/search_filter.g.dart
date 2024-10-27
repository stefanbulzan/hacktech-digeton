// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchFilterImpl _$$SearchFilterImplFromJson(Map<String, dynamic> json) =>
    _$SearchFilterImpl(
      query: json['query'] as String?,
      type: $enumDecodeNullable(_$SearchFilterTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$SearchFilterImplToJson(_$SearchFilterImpl instance) =>
    <String, dynamic>{
      'query': instance.query,
      'type': _$SearchFilterTypeEnumMap[instance.type],
    };

const _$SearchFilterTypeEnumMap = {
  SearchFilterType.clients: 'clients',
  SearchFilterType.offers: 'offers',
  SearchFilterType.contracts: 'contracts',
};
