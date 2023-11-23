import 'package:dartz/dartz.dart';
import 'package:dashboard/domain/product/product.dart';
import 'package:dashboard/domain/product/product_failure.dart';
import 'package:dashboard/domain/product/product_reject.dart';

abstract class IProductRepository {
  Future<Either<ProductFailure, List<Product>>> watchAll();
  Future<Either<ProductFailure, List<Product>>> productToReviewGet();
  Future<Either<ProductFailure, Unit>> productToApprove(int id);
  Future<Either<ProductFailure, Unit>> productToDecline(int id);
  Future<Either<ProductFailure, Unit>> productToVisible(int id);

  Future<Either<ProductFailure, List<Product>>> getAllProducts();
  Future<Either<ProductFailure, List<Product>>> getApprovedProducts();
  Future<Either<ProductFailure, List<Product>>> getPendingProducts();
  Future<Either<ProductFailure, List<Product>>> getRejectedProducts();
  Future<Either<ProductFailure, List<ProductReject>>>
      getRejectedProductsReviews();
  Future<Either<ProductFailure, Unit>> approveProduct(int id);
  Future<Either<ProductFailure, Unit>> rejectProduct(int id);
}
