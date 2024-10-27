import 'package:freezed_annotation/freezed_annotation.dart';

part 'summary_content.freezed.dart';
part 'summary_content.g.dart';

@Freezed()
class OffOfficeWithContent with _$OffOfficeWithContent {
  const factory OffOfficeWithContent({
    String? startDate,
    String? endDate,
    String? summary,
  }) = _OffOfficeWithContent;

  factory OffOfficeWithContent.fromJson(Map<String, dynamic> json) =>
      _$OffOfficeWithContentFromJson(json);
}
