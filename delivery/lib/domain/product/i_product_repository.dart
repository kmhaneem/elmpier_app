import 'package:dartz/dartz.dart';
import 'package:delivery/domain/product/product_failures.dart';

import 'model/product.dart';

abstract class IProductRepository {
  Future<Either<ProductFailure, Product>> getOrderedProduct(int productId);
  Future<Either<ProductFailure, Unit>> rejectMessage(int productId, String reason);
  Future<Either<ProductFailure, Unit>> pickupProduct(int id);
  Future<Either<ProductFailure, Unit>> deliveryProduct(int id);

}