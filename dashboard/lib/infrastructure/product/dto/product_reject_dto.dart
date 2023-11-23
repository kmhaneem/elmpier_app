import 'package:dashboard/domain/product/product_reject.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_reject_dto.freezed.dart';
part 'product_reject_dto.g.dart';

@freezed
class ProductRejectDto with _$ProductRejectDto {
  const ProductRejectDto._();

  const factory ProductRejectDto({
    required int id,
    @JsonKey(name: "product_id") required int productId,
    String? reason,
    String? productname
  }) = _ProductRejectDto;

  factory ProductRejectDto.fromJson(Map<String, dynamic> json) =>
      _$ProductRejectDtoFromJson(json);

  factory ProductRejectDto.fromDomain(ProductReject reject) {
    return ProductRejectDto(
      id: reject.id,
      productId: reject.productId,
      reason: reject.reason,
      productname: reject.productname
    );
  }

  ProductReject toDomain() {
    return ProductReject(
      id: id,
      productId: productId,
      reason: reason,
      productname: productname
    );
  }
}
