import 'package:freezed_annotation/freezed_annotation.dart';
part 'wine.freezed.dart';
part 'wine.g.dart';

@freezed
class Wine with _$Wine {
  factory Wine(
    @JsonKey(name: '') int id,
    @JsonKey(name: 'name') String name,
  ) = _Wine;

  factory Wine.fromJson(Map<String, dynamic> json) => _$WineFromJson(json);
}
