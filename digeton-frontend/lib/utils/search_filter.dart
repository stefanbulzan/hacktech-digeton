import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_filter.freezed.dart';
part 'search_filter.g.dart';

@Freezed()
class SearchFilter with _$SearchFilter {
  const factory SearchFilter({
    String? query,
    SearchFilterType? type,
  }) = _SearchFilter;

  factory SearchFilter.fromJson(Map<String, dynamic> json) =>
      _$SearchFilterFromJson(json);
}

enum SearchFilterType {
  clients,
  offers,
  contracts,
}

extension SearchFilterTypeExtension on SearchFilterType {
  String get name {
    switch (this) {
      case SearchFilterType.clients:
        return 'clients';
      case SearchFilterType.offers:
        return 'offers';
      case SearchFilterType.contracts:
        return 'contracts';
    }
  }
}
