import 'package:freezed_annotation/freezed_annotation.dart';

part 'summary.freezed.dart';
part 'summary.g.dart';

@Freezed()
class OffOfficeWithReplacement with _$OffOfficeWithReplacement {
  const factory OffOfficeWithReplacement({
    String? startDate,
    String? endDate,
    String? replacement,
  }) = _OffOfficeWithReplacement;

  factory OffOfficeWithReplacement.fromJson(Map<String, dynamic> json) =>
      _$OffOfficeWithReplacementFromJson(json);
}
