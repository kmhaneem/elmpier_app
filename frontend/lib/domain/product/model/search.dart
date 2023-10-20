import 'package:freezed_annotation/freezed_annotation.dart';
part 'search.freezed.dart';

@freezed
abstract class SearchProduct with _$SearchProduct {
  const factory SearchProduct({required String query}) = _SearchProduct;

  factory SearchProduct.empty() => const SearchProduct(query: "");
}
