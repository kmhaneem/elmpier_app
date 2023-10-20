import 'package:freezed_annotation/freezed_annotation.dart';
part 'model.freezed.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String name,
    required int brandId,
  }) = _ProductModel;

  factory ProductModel.empty() => const ProductModel(
        id: 0,
        name: "",
        brandId: 0,
      );
}
