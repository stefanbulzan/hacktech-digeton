import 'package:freezed_annotation/freezed_annotation.dart';

part 'prompt_model.freezed.dart';
part 'prompt_model.g.dart';

@freezed
class PromptModel with _$PromptModel {
  const factory PromptModel({
    required String input,
    String? threadId,
  }) = _PromptModel;

  factory PromptModel.fromJson(Map<String, dynamic> json) =>
      _$PromptModelFromJson(json);
}
