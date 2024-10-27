import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting.freezed.dart';
part 'meeting.g.dart';

@Freezed()
class Meeting with _$Meeting {
  const factory Meeting({
    required String title,
    required List<String> participants,
    required String content,
    String? date,
    String? duration,
  }) = _Meeting;

  factory Meeting.fromJson(Map<String, dynamic> json) =>
      _$MeetingFromJson(json);
}
