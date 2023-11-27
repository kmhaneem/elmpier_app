
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String name,
    required String description,
    required int category,
    required int brand,
    required int model,
    required int stock,
    required int price,
    required List<String> imageUrls,
  }) = _Product;
}