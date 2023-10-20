import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
abstract class ProductCategory with _$ProductCategory {
  const factory ProductCategory({
    required int id, 
    required String name,
  }) = _ProductCategory;

  factory ProductCategory.empty() => const ProductCategory(
        id: 0,
        name: "",
      );
}
