import 'package:freezed_annotation/freezed_annotation.dart';

part 'test101.freezed.dart';

@freezed
abstract class Test101 with _$Test101 {
  const factory Test101({
    String id,
    String name,
  }) = _Test101;

  factory Test101.fromJson(Map<String, dynamic> json) =>
      _$Test101FromJson(json);
}
