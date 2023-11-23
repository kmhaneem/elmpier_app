
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_reject.freezed.dart';

@freezed
class ProductReject with _$ProductReject {
  const factory ProductReject({
    required int id,
    required int productId,
    String? reason,
    String? productname
  }) = _ProductReject;
}