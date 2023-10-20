import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/core/value_objects.dart';
import 'package:frontend/domain/product/model/product.dart';
import 'package:frontend/domain/product/value_object.dart';

part 'product_dtos.freezed.dart';
part 'product_dtos.g.dart';

// @JsonSerializable()
@freezed
class ProductDto with _$ProductDto {
  const ProductDto._();

  const factory ProductDto({
    required int id,
    @JsonKey(name: 'user_id') required int userId,
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
      userId: product.userId.getOrCrash(),
      name: product.name.getOrCrash(),
      description: product.description.getOrCrash(),
      category: product.category.getOrCrash(),
      brand: product.brand.getOrCrash(),
      model: product.model.getOrCrash(),
      stock: product.stock.getOrCrash(),
      price: product.price.getOrCrash(),
      imageUrls: product.imageUrls,
    );
  }

  Product toDomain() {
    return Product(
      id: id,
      userId: UserId(userId),
      name: Name(name),
      description: Description(description),
      category: Category(category),
      brand: Brand(brand),
      model: Model(model),
      stock: Stock(stock),
      price: Price(price),
      imageUrls: imageUrls,
    );
  }
}
