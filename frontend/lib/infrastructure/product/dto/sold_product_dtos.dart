import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/product/model/sold_product.dart';
part 'sold_product_dtos.freezed.dart';
part 'sold_product_dtos.g.dart';

@freezed
class SoldProductDto with _$SoldProductDto {
  const SoldProductDto._();

  const factory SoldProductDto({
    @JsonKey(name: "product_id") required int productId,
    required String name,
    required int price,
    @JsonKey(name: "image_url") required String imageUrl,
    @JsonKey(name: "total_qty") required int totalQty,
  }) = _SoldProductDto;

  factory SoldProductDto.fromJson(Map<String, dynamic> json) =>
      _$SoldProductDtoFromJson(json);

  factory SoldProductDto.fromDomain(SoldProduct product) {
    return SoldProductDto(
      productId: product.productId,
      name: product.name,
      price: product.price,
      imageUrl: product.imageUrl,
      totalQty: product.totalQty,
    );
  }

  SoldProduct toDomain() {
    return SoldProduct(
      productId: productId,
      name: name,
      price: price,
      imageUrl: imageUrl,
      totalQty: totalQty,
    );
  }
}
