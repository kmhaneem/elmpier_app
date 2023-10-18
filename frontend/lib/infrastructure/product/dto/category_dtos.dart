import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/product/model/category.dart';

part 'category_dtos.freezed.dart';
part 'category_dtos.g.dart';

// @JsonSerializable()
@freezed
class ProductCategoryDto with _$ProductCategoryDto {
  const factory ProductCategoryDto({
    required int id,
    required String name,
  }) = _ProductCategoryDto;

  factory ProductCategoryDto.fromDomain(ProductCategory category) {
    return ProductCategoryDto(
      id: category.id,
      name: category.name,
    );
  }

  factory ProductCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryDtoFromJson(json);
}

extension ProductCategoryDtoExtensions on ProductCategoryDto {
  ProductCategory toDomain() {
    return ProductCategory(
      id: id,
      name: name,
    );
  }
}
