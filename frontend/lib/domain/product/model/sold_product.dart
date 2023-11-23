
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sold_product.freezed.dart';

@freezed
class SoldProduct with _$SoldProduct {
  const factory SoldProduct({
    required int productId,
    required String name,
    required int price,
    required String imageUrl,
    required int totalQty
  }) = _SoldProduct;
}