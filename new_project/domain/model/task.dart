import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medtech/base/data/api/datetime.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'createdAt', fromJson: fromTimeStamp, toJson: toTimeStamp) DateTime? createdAt,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
