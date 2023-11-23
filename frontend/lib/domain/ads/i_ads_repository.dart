import 'package:dartz/dartz.dart';
import 'package:frontend/domain/ads/ads_failure.dart';
import 'package:frontend/domain/product/model/product.dart';
import '../orders/model/orders.dart';

abstract class IAdsRepository {
  Future<Either<AdsFailure, Unit>> makeProductTopAds(int id, Orders order);
  Future<Either<AdsFailure, Unit>> makeProductPopAds(int id, Orders order);
  Future<Either<AdsFailure, Product>> getProductPopAds();
  Future<Either<AdsFailure, List<Product>>> getProductTopAds();
}
