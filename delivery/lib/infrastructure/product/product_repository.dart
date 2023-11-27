import 'package:dartz/dartz.dart';
import 'package:delivery/domain/product/i_product_repository.dart';
import 'package:delivery/domain/product/product_failures.dart';
import 'package:delivery/domain/product/model/product.dart';
import 'package:delivery/infrastructure/auth/secure_storage/secure_storage_service.dart';
import 'package:delivery/infrastructure/product/product_dtos.dart';
import 'package:dio/dio.dart';

import '../core/api.dart';

class ProductRepository implements IProductRepository {
  final Dio _dio;
  final SecureStorageService secureStorage = SecureStorageService();
  
  
  ProductRepository(this._dio);
  @override
  Future<Either<ProductFailure, Product>> getOrderedProduct(
      int productId) async {
        final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/delivery-person/ordered-product",
        data: {"id": productId},
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print(response.data["response"]);

      if (response.statusCode == 200) {
        final productData = response.data["response"][0];
        final productDto = ProductDto.fromJson(productData);
        final product = productDto.toDomain();
        return right(product);
      } else {
        return left(const ProductFailure.serverError());
      }
    } catch (error) {
      print("ERROR HAP $error");
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> rejectMessage(
      int productId, String reason) async {
        final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.post(
        "$api/delivery-person/product/reject",
        data: {"productId": productId, "reason": reason},
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const ProductFailure.serverError());
      }
    } catch (error) {
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> pickupProduct(int id) async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.patch(
        "$api/delivery-person/product/confirm",
        data: {
          "id": id
        },
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const ProductFailure.serverError());
      }
    } catch (error) {
      return left(const ProductFailure.serverError());
    }
  }
  
  @override
  Future<Either<ProductFailure, Unit>> deliveryProduct(int id) async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.patch(
        "$api/delivery-person/delivery-item",
        data: {
          "id": id
        },
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const ProductFailure.serverError());
      }
    } catch (error) {
      return left(const ProductFailure.serverError());
    }
  }
}
