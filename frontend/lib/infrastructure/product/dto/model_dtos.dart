import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/product/model/model.dart';
part 'model_dtos.freezed.dart';
part 'model_dtos.g.dart';

// @JsonSerializable()
@freezed
class ProductModelDto with _$ProductModelDto {
  const factory ProductModelDto(
      {required int id,
      required String name,
      @JsonKey(name: 'brand_id') required int brandId}) = _ProductModelDto;

  factory ProductModelDto.fromDomain(ProductModel model) {
    return ProductModelDto(
      id: model.id,
      name: model.name,
      brandId: model.brandId,
    );
  }

  factory ProductModelDto.fromJson(Map<String, dynamic> json) =>
      _$ProductModelDtoFromJson(json);
}

extension ProductModelExtension on ProductModelDto {
  ProductModel toDomaon() {
    return ProductModel(
      id: id,
      name: name,
      brandId: brandId,
    );
  }
}
