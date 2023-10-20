import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/product/model/brand.dart';
part 'brand_dtos.freezed.dart';
part 'brand_dtos.g.dart';

// @JsonSerializable()
@freezed
class ProductBrandDto with _$ProductBrandDto {
  const factory ProductBrandDto({
    required int id,
    required String name,
    @JsonKey(name: 'category_id') required int categoryId,
  }) = _ProductBrandDto;

  factory ProductBrandDto.fromDomain(ProductBrand brand) {
    return ProductBrandDto(
      id: brand.id,
      name: brand.name,
      categoryId: brand.categoryId,
    );
  }

  factory ProductBrandDto.fromJson(Map<String, dynamic> json) =>
      _$ProductBrandDtoFromJson(json);
}

extension ProductBrandDtoExtension on ProductBrandDto {
  ProductBrand toDomain() {
    return ProductBrand(
      id: id,
      name: name,
      categoryId: categoryId,
    );
  }
}
