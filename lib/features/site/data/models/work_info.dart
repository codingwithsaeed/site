import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_info.freezed.dart';
part 'work_info.g.dart';

@freezed
class WorkInfo with _$WorkInfo {
  const factory WorkInfo(
    String status,
    String type,
    List<String> cities,
  ) = _WorkInfo;

  factory WorkInfo.fromJson(Map<String, dynamic> json) =>
      _$WorkInfoFromJson(json);
}
