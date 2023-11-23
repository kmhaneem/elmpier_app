
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_condition.freezed.dart';

@freezed
class ProductCondition with _$ProductCondition{
  const factory ProductCondition({
    required int id,
    required String name
  }) = _ProductCondition;
}