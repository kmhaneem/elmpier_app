import 'package:dartz/dartz.dart';
import 'package:dashboard/domain/product/product_reject.dart';
import 'package:dashboard/infrastructure/product/dto/product_reject_dto.dart';
import 'package:dio/dio.dart';

import '../../core/api.dart';
import '../../domain/product/i_product_repository.dart';
import '../../domain/product/product.dart';
import '../../domain/product/product_failure.dart';
import '../auth/secure_storage/secure_storage_service.dart';
import 'dto/product_dto.dart';

class ProductRepository implements IProductRepository {
  late final Dio _dio;
  final SecureStorageService secureStorage = SecureStorageService();
  ProductRepository(this._dio);

  @override
  Future<Either<ProductFailure, List<Product>>> watchAll() async {
    try {
      final response = await _dio.get(
        "$api/products",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );

      if (response.statusCode == 200) {
        final productDto = (response.data['response'] as List)
            .map((e) => ProductDto.fromJson(e));
        final products = productDto.map((dto) => dto.toDomain()).toList();

        return right(products);
      } else {
        return left(const ProductFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, List<Product>>> productToReviewGet() async {
    try {
      final response = await _dio.get(
        "$api/admin/product-review",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );

      if (response.statusCode == 200) {
        final productDto = (response.data['response'] as List)
            .map((e) => ProductDto.fromJson(e));
        final products = productDto.map((dto) => dto.toDomain()).toList();

        return right(products);
      } else {
        return left(const ProductFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> productToApprove(int id) async {
    try {
      final response = await _dio.patch(
        "$api/admin/product-review",
        data: {"id": id},
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const ProductFailure.notFound());
      }
    } catch (error) {
      print("Error Is $error");
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> productToDecline(int id) async {
    try {
      final response = await _dio.delete(
        "$api/admin/product-review",
        data: {
          "id": id,
        },
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const ProductFailure.notFound());
      }
    } catch (error) {
      print("Error Is $error");
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> productToVisible(int id) async {
    try {
      final response =
          await _dio.patch("$api/admin/product-visible", data: {"id": id});

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const ProductFailure.notFound());
      }
    } catch (error) {
      print("Error Is $error");
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, List<Product>>> getAllProducts() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/admin/products/all",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        final productDto = (response.data['response'] as List)
            .map((e) => ProductDto.fromJson(e));
        final products = productDto.map((dto) => dto.toDomain()).toList();

        return right(products);
      } else {
        return left(const ProductFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, List<Product>>> getApprovedProducts() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/admin/products/approved",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        final productDto = (response.data['response'] as List)
            .map((e) => ProductDto.fromJson(e));
        final products = productDto.map((dto) => dto.toDomain()).toList();

        return right(products);
      } else {
        return left(const ProductFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, List<Product>>> getPendingProducts() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/admin/products/pending",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        final productDto = (response.data['response'] as List)
            .map((e) => ProductDto.fromJson(e));
        final products = productDto.map((dto) => dto.toDomain()).toList();

        return right(products);
      } else {
        return left(const ProductFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, List<Product>>> getRejectedProducts() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/admin/products/rejected",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        final productDto = (response.data['response'] as List)
            .map((e) => ProductDto.fromJson(e));
        final products = productDto.map((dto) => dto.toDomain()).toList();

        return right(products);
      } else {
        return left(const ProductFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, List<ProductReject>>>
      getRejectedProductsReviews() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/admin/product/rejected/reviews",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print(response);

      if (response.statusCode == 200) {
        final productDto = (response.data['response'] as List)
            .map((e) => ProductRejectDto.fromJson(e));
        final products = productDto.map((dto) => dto.toDomain()).toList();

        return right(products);
      } else {
        return left(const ProductFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const ProductFailure.serverError());
    }
  }
  
  
  
  @override
  Future<Either<ProductFailure, Unit>> approveProduct(int id) async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.patch(
        "$api/admin/product/approve/${id}",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print(response);

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const ProductFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const ProductFailure.serverError());
    }
  }
  
  @override
  Future<Either<ProductFailure, Unit>> rejectProduct(int id) async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.patch(
        "$api/admin/product/reject/${id}",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print(response);

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const ProductFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const ProductFailure.serverError());
    }
  }
}
