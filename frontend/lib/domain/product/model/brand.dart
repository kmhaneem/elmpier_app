import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand.freezed.dart';

@freezed
abstract class ProductBrand with _$ProductBrand {
  const factory ProductBrand(
      {required int id,
      required String name,
      required int categoryId}) = _ProductBrand;

  factory ProductBrand.empty() =>
      const ProductBrand(id: 0, name: "", categoryId: 0);
}

// category_id