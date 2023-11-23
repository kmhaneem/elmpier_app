import 'package:dartz/dartz.dart';
import 'package:frontend/domain/product/model/brand.dart';
import 'package:frontend/domain/product/model/model.dart';
import 'package:frontend/domain/product/model/product_condition.dart';
import 'package:frontend/domain/product/model/sold_product.dart';

import 'package:frontend/infrastructure/product/dto/brand_dtos.dart';
import 'package:frontend/infrastructure/product/dto/model_dtos.dart';
import 'package:frontend/infrastructure/product/dto/product_condition_dtos.dart';
import 'package:frontend/infrastructure/product/dto/sold_product_dtos.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';
import 'package:frontend/domain/product/i_product_repository.dart';
import 'package:frontend/domain/product/product_failure.dart';
import 'package:frontend/domain/product/model/product.dart';
import 'package:frontend/infrastructure/auth/secure_storage/secure_storage_service.dart';
import 'package:frontend/infrastructure/core/api.dart';
import 'package:frontend/infrastructure/product/dto/product_dtos.dart';

import '../../domain/product/model/category.dart';
import 'dto/category_dtos.dart';

class ProductRepository implements IProductRepository {
  late final Dio _dio;
  final SecureStorageService secureStorage = SecureStorageService();
  ProductRepository(this._dio);

  @override
  Future<Either<ProductFailure, List<Product>>> watchAll() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api2/products",
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
  Future<Either<ProductFailure, Unit>> delete(int id) async {
    try {
      final String? token = await secureStorage.read("token");
      final response = await _dio.delete(
        "$api2/products/product/${id}",
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const ProductFailure.notFound());
      }
    } catch (error) {
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> update(
      Product product, List<XFile> images) async {
    try {
      final String? token = await secureStorage.read("token");
      final productDto = ProductDto.fromDomain(product);

      FormData formData = FormData.fromMap({
        "name": productDto.name,
        "description": productDto.description,
        "stockUnit": productDto.stock,
        "price": productDto.price
      });

      for (var image in images) {
        formData.files.add(MapEntry("images",
            await MultipartFile.fromFile(image.path, filename: image.name)));
      }

      final response = await _dio.patch(
        "$api2/products/product/${productDto.id}",
        data: formData,
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const ProductFailure.notFound());
      }
    } catch (e) {
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, Unit>> create(
      Product product, List<XFile> images) async {
    try {
      final String? token = await secureStorage.read("token");
      final productDto = ProductDto.fromDomain(product);

      FormData formData = FormData.fromMap({
        "name": productDto.name,
        "description": productDto.description,
        "categoryId": productDto.category,
        "brandId": productDto.brand,
        "modelId": productDto.model,
        "stockUnit": productDto.stock,
        "price": productDto.price,
        "conditionId": productDto.conditionId
      });

      for (var image in images) {
        formData.files.add(MapEntry("images",
            await MultipartFile.fromFile(image.path, filename: image.name)));
      }

      final response = await _dio.post(
        "$api2/product/create",
        data: formData,
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 201) {
        return right(unit);
      } else {
        return left(ProductFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error in create: $e");
      if (e.response?.statusCode == 403) {
        return left(const ProductFailure.exceededLimit());
      } else {
        return left(const ProductFailure.serverError());
      }
    }
  }

  @override
  Future<Either<ProductFailure, List<ProductCategory>>>
      getAllCategories() async {
    try {
      final response = await Dio().get('$api2/product/category');
      if (response.statusCode == 200) {
        final categoriesDto = (response.data['response'] as List)
            .map((e) => ProductCategoryDto.fromJson(e))
            .toList();
        final categories = categoriesDto.map((dto) => dto.toDomain()).toList();
        return right(categories);
      } else {
        return left(const ProductFailure.notFound());
      }
    } catch (e) {
      return left(ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, List<ProductBrand>>> getAllBrands() async {
    try {
      final response = await Dio().get('$api2/product/brand');

      if (response.statusCode == 200) {
        final brandsDto = (response.data['response'] as List)
            .map((e) => ProductBrandDto.fromJson(e));
        final brands = brandsDto.map((dto) => dto.toDomain()).toList();
        return right(brands);
      } else {
        return left(const ProductFailure.notFound());
      }
    } catch (e) {
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, List<ProductModel>>> getAllModels() async {
    try {
      final response = await Dio().get('$api2/product/model');

      if (response.statusCode == 200) {
        final modelDto = (response.data['response'] as List)
            .map((e) => ProductModelDto.fromJson(e));
        final models = modelDto.map((dto) => dto.toDomaon()).toList();

        return right(models);
      } else {
        return left(const ProductFailure.notFound());
      }
    } catch (e) {
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, List<Product>>> getAllSearchedProducts(
      String query, int? userId) async {
    try {
      final response = await Dio().get(
        '$api2/product/search',
        data: {
          "userId": userId,
        },
        queryParameters: {'query': query},
      );

      if (response.statusCode == 200) {
        final productDto =
            (response.data as List).map((e) => ProductDto.fromJson(e));
        final products = productDto.map((dto) => dto.toDomain()).toList();

        return right(products);
      } else {
        return left(const ProductFailure.notFound());
      }
    } catch (e) {
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, List<Product>>> getSellerProduct() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get("$api2/user/products",
          options: Options(
            headers: <String, String>{
              'Authorization': 'Bearer $token',
            },
          ));
      print(response);

      if (response.statusCode == 200) {
        final productDto = (response.data['response'] as List)
            .map((e) => ProductDto.fromJson(e));
        final products = productDto.map((dto) => dto.toDomain()).toList();

        return right(products);
      } else {
        return left(const ProductFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is FOR SELLER PRODUCT $e");
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, List<SoldProduct>>> getSoldProducts() async {
    try {
      final String? token = await secureStorage.read("token");
      final response = await _dio.get(
        "$api2/product/sold",
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print(response);

      if (response.statusCode == 200) {
        final soldProducts = (response.data['response'] as List)
            .map((e) => SoldProductDto.fromJson(e));
        final products = soldProducts.map((dto) => dto.toDomain()).toList();
        return right(products);
      } else {
        return left(const ProductFailure.serverError());
      }
    } catch (error) {
      print('SOLD PRODUCT ERROR $error');
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, List<ProductCondition>>>
      getAllConditions() async {
    try {
      final response = await Dio().get('$api2/product/conditons');
      if (response.statusCode == 200) {
        final conditionDto = (response.data['response'] as List)
            .map((e) => ProductConditionDto.fromJson(e))
            .toList();
        final conditions = conditionDto.map((dto) => dto.toDomain()).toList();
        return right(conditions);
      } else {
        return left(const ProductFailure.notFound());
      }
    } catch (e) {
      return left(ProductFailure.serverError());
    }
  }
}
