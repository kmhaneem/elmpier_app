
import 'package:freezed_annotation/freezed_annotation.dart';
part 'district.freezed.dart';

@freezed
class District with _$District {
  const factory District({
    required int id,
    required String name,
    required int provinceId,
  }) = _District;
}