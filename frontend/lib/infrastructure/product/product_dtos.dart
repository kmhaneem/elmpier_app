import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/core/value_objects.dart';
import 'package:frontend/domain/product/product.dart';
import 'package:frontend/domain/product/value_object.dart';
part 'product_dtos.freezed.dart';

@freezed
abstract class ProductDto implements _$ProductDto {
  const ProductDto._();

  const factory ProductDto(
          {required dynamic id,
          @JsonKey(name: "name") required String productName,
          @JsonKey(name: "description") required String productDescription,
          @JsonKey(name: "category") required int productCategory,
          @JsonKey(name: "brand") required int productBrand,
          @JsonKey(name: "model") required int productModel,
          @JsonKey(name: "quantity") required int productQuantity,
          @JsonKey(name: "price") required int productPrice,
          @JsonKey(name: "url") required List<String> productImagesUrl}) =
      _ProductDto;

  factory ProductDto.fromDomain(Product product) {
    return ProductDto(
      id: product.id.getOrCrash(),
      productName: product.productName.getOrCrash(),
      productDescription: product.productDescription.getOrCrash(),
      productCategory: product.productCategory.getOrCrash(),
      productBrand: product.productBrand.getOrCrash(),
      productModel: product.productModel.getOrCrash(),
      productQuantity: product.productQuantity.getOrCrash(),
      productPrice: product.productPrice.getOrCrash(),
      productImagesUrl: product.productUrls,
    );
  }

  Product toDomain() {
    return Product(
      id: UniqueId.fromUniqueString(id.toString()),
      productName: ProductName(productName),
      productDescription: ProductDescription(productDescription),
      productCategory: ProductCategory(productCategory),
      productBrand: ProductBrand(productBrand),
      productModel: ProductModel(productModel),
      productQuantity: ProductQuantity(productQuantity),
      productPrice: ProductPrice(productPrice),
      productUrls: productImagesUrl,
    );
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}
