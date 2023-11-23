import 'package:dartz/dartz.dart';
import 'package:frontend/domain/product/model/brand.dart';
import 'package:frontend/domain/product/model/model.dart';
import 'package:frontend/domain/product/model/product.dart';
import 'package:frontend/domain/product/model/product_condition.dart';
import 'package:frontend/domain/product/model/sold_product.dart';
import 'package:frontend/domain/product/product_failure.dart';
import 'package:image_picker/image_picker.dart';

import 'model/category.dart';

abstract class IProductRepository {
  Future<Either<ProductFailure, List<Product>>> watchAll();
  Future<Either<ProductFailure, Unit>> create(
      Product product, List<XFile> images);
  Future<Either<ProductFailure, Unit>> update(Product product, List<XFile> images);
  Future<Either<ProductFailure, Unit>> delete(int id);
  Future<Either<ProductFailure, List<ProductCategory>>> getAllCategories();
  Future<Either<ProductFailure, List<ProductBrand>>> getAllBrands();
  Future<Either<ProductFailure, List<ProductModel>>> getAllModels();
  Future<Either<ProductFailure, List<ProductCondition>>> getAllConditions();
  Future<Either<ProductFailure, List<Product>>> getAllSearchedProducts(
      String query, int? userId);
  Future<Either<ProductFailure, List<Product>>> getSellerProduct();
  Future<Either<ProductFailure, List<SoldProduct>>> getSoldProducts();
}
