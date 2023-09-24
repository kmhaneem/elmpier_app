import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/core/value_objects.dart';
import 'package:frontend/domain/product/value_object.dart';
part 'product.freezed.dart';

@freezed
abstract class Product implements _$Product {
  const Product._();

  const factory Product(
      {required UniqueId id,
      required ProductName productName,
      required ProductDescription productDescription,
      required ProductCategory productCategory,
      required ProductBrand productBrand,
      required ProductModel productModel,
      required ProductQuantity productQuantity,
      required ProductPrice productPrice,
      required List<String> productUrls}) = _Product;

  factory Product.empty() => Product(
        id: UniqueId(),
        productName: ProductName(""),
        productDescription: ProductDescription(""),
        productCategory: ProductCategory.empty(),
        productBrand: ProductBrand.empty(),
        productModel: ProductModel.empty(),
        productQuantity: ProductQuantity(0),
        productPrice: ProductPrice(0),
        productUrls: [],
      );
}
