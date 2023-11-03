import 'package:dartz/dartz.dart';
import 'package:frontend/domain/product/model/brand.dart';
import 'package:frontend/domain/product/model/model.dart';
import 'package:frontend/domain/product/model/product.dart';
import 'package:frontend/domain/product/product_failure.dart';
import 'package:image_picker/image_picker.dart';

import 'model/category.dart';

abstract class IProductRepository {
  Future<Either<ProductFailure, List<Product>>> watchAll();
  Future<Either<ProductFailure, Unit>> create(
      Product product, List<XFile> images);
  Future<Either<ProductFailure, Unit>> update(Product product);
  Future<Either<ProductFailure, Unit>> delete(Product product);
  Future<Either<ProductFailure, List<ProductCategory>>> getAllCategories();
  Future<Either<ProductFailure, List<ProductBrand>>> getAllBrands();
  Future<Either<ProductFailure, List<ProductModel>>> getAllModels();
  Future<Either<ProductFailure, List<Product>>> getAllSearchedProducts(String query, int? userId);
  Future<Either<ProductFailure, List<Product>>> getSellerProduct();
}
