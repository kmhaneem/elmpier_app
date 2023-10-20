import 'package:dartz/dartz.dart';
import 'package:frontend/domain/product/model/brand.dart';
import 'package:frontend/domain/product/model/model.dart';
import 'package:frontend/domain/product/model/search.dart';
import 'package:frontend/infrastructure/product/dto/brand_dtos.dart';
import 'package:frontend/infrastructure/product/dto/model_dtos.dart';
import 'package:frontend/infrastructure/product/dto/search_dtos.dart';
// import 'package:cross_file/src/types/interface.dart';
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
    try {
      final response = await _dio.get("$api2/products",
          options: Options(
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
              // 'Authorization': 'Bearer ${await secureStorage.read("auth-token")}',
            },
          ));

      // print("Response Data: ${response.data}");

      if (response.statusCode == 200) {
        // final Map<String, dynamic> responseData =
        //     response.data as Map<String, dynamic>;
        // final List<dynamic> productList =
        //     responseData['response'] as List<dynamic>;

        // final products = productList.map((product) {
        //   final productDto =
        //       ProductDto.fromJson(product as Map<String, dynamic>);
        //   return productDto.toDomain();
        // }).toList();

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
  Future<Either<ProductFailure, Unit>> delete(Product product) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<ProductFailure, Unit>> update(Product product) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<Either<ProductFailure, Unit>> create(
      Product product, List<XFile> images) async {
    try {
      final productDto = ProductDto.fromDomain(product);

      FormData formData = FormData.fromMap({
        "userId": productDto.userId,
        "name": productDto.name,
        "description": productDto.description,
        "categoryId": productDto.category,
        "brandId": productDto.brand,
        "modelId": productDto.model,
        "stockUnit": productDto.stock,
        "price": productDto.price
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
      return left(const ProductFailure.serverError());
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
      print('Repository Error: $e');
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
        print('Suceess to get BRANDS');
        return right(brands);
      } else {
        return left(const ProductFailure.notFound());
      }
    } catch (e) {
      print('Repository Error: $e');
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
      print('Repository Error: $e');
      return left(const ProductFailure.serverError());
    }
  }

  @override
  Future<Either<ProductFailure, List<Product>>> getAllSearchedProducts(
      String query) async {
    try {
      final response = await Dio()
          .get('$api2/product/search', queryParameters: {'query': query});
      print('Response Data: ${response.data}');

      if (response.statusCode == 200) {
        // final productDto = (response.data['response'] as List)
        //     .map((e) => ProductDto.fromJson(e));
        final productDto =
            (response.data as List).map((e) => ProductDto.fromJson(e));
        final products = productDto.map((dto) => dto.toDomain()).toList();

        return right(products);
      } else {
        return left(const ProductFailure.notFound());
      }
    } catch (e) {
      print('Repository Errorxxx: $e');
      return left(const ProductFailure.serverError());
    }
  }

  // @override
  // Future<Either<ProductFailure, List<ProductCategory>>>
  //     getAllCategories() async {
  //   try {
  //     final token =
  //         "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOjIzLCJlbWFpbCI6InRlc3RAdC5jb20iLCJ2ZXJpZmllZCI6dHJ1ZSwiaWF0IjoxNjk3NTM2MjI5fQ.ssfnIMIbc1zAqAbtT6scNH3EFUMmBZlAHPS2NrKU62o";

  //     final response = await Dio().get(
  //       '$api2/product/category',
  //       options: Options(
  //         headers: <String, String>{
  //           'Authorization': 'Bearer $token',
  //         },
  //       ),
  //     );

  //     if (response.statusCode == 200) {
  //       final categoriesDto = (response.data['response'] as List)
  //           .map((e) => ProductCategoryDto.fromJson(e))
  //           .toList();
  //       final categories = categoriesDto.map((dto) => dto.toDomain()).toList();
  //       return right(categories);
  //     } else {
  //       return left(ProductFailure.notFound());
  //     }
  //   } catch (e) {
  //     print('Repository Error in getAllCategories: $e');
  //     return left(ProductFailure.serverError());
  //   }
  // }
}

// required int id,
    // @JsonKey(name: 'user_id') required int userId,
    // required String name,
    // required String description,
    // @JsonKey(name: 'category_id') required int category,
    // @JsonKey(name: 'brand_id') required int brand,
    // @JsonKey(name: 'model_id') required int model,
    // @JsonKey(name: 'stock_unit') required int stock,
    // @JsonKey(name: 'image_urls') required List<String> imageUrls,