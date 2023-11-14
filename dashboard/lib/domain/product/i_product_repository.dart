import 'package:dartz/dartz.dart';
import 'package:dashboard/domain/product/product.dart';
import 'package:dashboard/domain/product/product_failure.dart';


abstract class IProductRepository {
  Future<Either<ProductFailure, List<Product>>> watchAll();
  Future<Either<ProductFailure, List<Product>>> productToReviewGet();
  Future<Either<ProductFailure, Unit>> productToApprove(int id);
  Future<Either<ProductFailure, Unit>> productToDecline(int id);
  Future<Either<ProductFailure, Unit>> productToVisible(int id);
  // Future<Either<ProductFailure, Unit>> delete(Product product);

}
