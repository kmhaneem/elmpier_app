import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/advertisement/model/advertisement_condition.dart';
import 'package:frontend/domain/product/model/product_condition.dart';
part 'product_condition_dtos.freezed.dart';
part 'product_condition_dtos.g.dart';

@freezed
class ProductConditionDto with _$ProductConditionDto {
  const ProductConditionDto._();

  const factory ProductConditionDto({required int id, required String name}) =
      _ProductConditionDto;

  factory ProductConditionDto.fromJson(Map<String, dynamic> json) =>
      _$ProductConditionDtoFromJson(json);

  factory ProductConditionDto.fromDomain(ProductCondition condition) {
    return ProductConditionDto(
      id: condition.id,
      name: condition.name,
    );
  }

  ProductCondition toDomain() {
    return ProductCondition(
      id: id,
      name: name,
    );
  }
}
