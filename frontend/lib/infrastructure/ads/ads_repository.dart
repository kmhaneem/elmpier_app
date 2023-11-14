import 'package:dio/dio.dart';
import 'package:frontend/domain/ads/ads_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/ads/i_ads_repository.dart';
import 'package:frontend/domain/product/model/product.dart';
import 'package:frontend/infrastructure/core/api.dart';

import '../../domain/orders/model/orders.dart';
import '../product/dto/product_dtos.dart';

class AdsRepository implements IAdsRepository {
  final Dio _dio;
  AdsRepository(this._dio);
  @override
  Future<Either<AdsFailure, Unit>> makeProductTopAds(
      int id, Orders order) async {
    try {
      final response = await _dio.post(
        "$api2/product/ads/top",
        data: {
          "id": id,
          "userId": order.userId,
          "paymentMethod": order.paymentMethod,
          "status": order.status,
          "paymentId": order.paymentId,
          "statusId": order.statusId,
          "amount": order.amount
        },
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const AdsFailure.serverError());
      }
    } catch (error) {
      return left(const AdsFailure.serverError());
    }
  }

  @override
  Future<Either<AdsFailure, Unit>> makeProductPopAds(
      int id, Orders order) async {
    try {
      final response = await _dio.post(
        "$api2/product/ads/pop",
        data: {
          "id": id,
          "userId": order.userId,
          "paymentMethod": order.paymentMethod,
          "status": order.status,
          "paymentId": order.paymentId,
          "statusId": order.statusId,
          "amount": order.amount
        },
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const AdsFailure.serverError());
      }
    } catch (error) {
      return left(const AdsFailure.serverError());
    }
  }

  @override
  Future<Either<AdsFailure, Product>> getProductPopAds() async {
    try {
      final response = await _dio.get(
        "$api2/product/ads/pop",
      );

      if (response.statusCode == 200) {
        final data = response.data['response'];
        // print("POP ADS IS $data");
        final productDto = ProductDto.fromJson(response.data['response'][0]);
        final product = productDto.toDomain();
        return right(product);
      } else {
        return left(const AdsFailure.notFound());
      }
    } catch (error) {
      // print("Pop Ads error is $error");
      return left(const AdsFailure.serverError());
    }
  }
}
