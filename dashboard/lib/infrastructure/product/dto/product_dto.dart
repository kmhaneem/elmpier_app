import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/product/product.dart';
part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDto with _$ProductDto {
  const ProductDto._();

  const factory ProductDto({
    required int id,
    required String name,
    required String description,
    @JsonKey(name: 'category_id') required int category,
    @JsonKey(name: 'brand_id') required int brand,
    @JsonKey(name: 'model_id') required int model,
    @JsonKey(name: 'stock_unit') required int stock,
    @JsonKey(name: 'image_urls') required List<String> imageUrls,
    required int price,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  factory ProductDto.fromDomain(Product product) {
    return ProductDto(
      id: product.id,
      name: product.name,
      description: product.description,
      category: product.category,
      brand: product.brand,
      model: product.model,
      stock: product.stock,
      price: product.price,
      imageUrls: product.imageUrls,
    );
  }

  Product toDomain() {
    return Product(
      id: id,
      name: name,
      description: description,
      category: category,
      brand: brand,
      model: model,
      stock: stock,
      price: price,
      imageUrls: imageUrls,
    );
  }
}
