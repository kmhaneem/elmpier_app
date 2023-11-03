
import 'package:freezed_annotation/freezed_annotation.dart';
part 'province.freezed.dart';

@freezed
class Province with _$Province {
  const factory Province({
    required int id,
    required String name
  }) = _Province;
}