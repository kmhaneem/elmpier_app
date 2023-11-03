import 'package:dio/dio.dart';
import 'package:frontend/domain/cart/cart_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend/domain/cart/i_cart_repository.dart';
import 'package:frontend/domain/cart/model/cart.dart';
import 'package:frontend/infrastructure/cart/dto/cart_dtos.dart';

import '../auth/secure_storage/secure_storage_service.dart';
import '../core/api.dart';

class CartRepository implements ICartRepository {
  final Dio _dio;
  final SecureStorageService secureStorage = SecureStorageService();
  CartRepository(this._dio);
  @override
  Future<Either<CartFailure, Unit>> addToCart(Cart cart) async {
      final String? token = await secureStorage.read("token");
    try {
      final cartDto = CartDto.fromDomain(cart);

      FormData formData = FormData.fromMap({
        "productId": cartDto.productId,
        "name": cartDto.name,
        "price": cartDto.price,
        "itemQty": cartDto.itemQty,
        "imageUrl": cartDto.imageUrl
      });

      final response = await _dio.post(
        "$api2/cart",
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
        return left(CartFailure.notFound());
      }
    } catch (e) {
      print('Repository Error: $e');
      return left(CartFailure.serverError());
    }
  }

  @override
  Future<Either<CartFailure, List<Cart>>> getCartItems() async {
      final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api2/cart",
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print('API Response: ${response.data}');

      final cartDto =
          (response.data['response'] as List).map((e) => CartDto.fromJson(e));
      final cart = cartDto.map((dto) => dto.toDomain()).toList();
      if (response.statusCode == 200) {
        return right(cart);
      } else {
        return left(CartFailure.notFound());
      }
    } catch (e) {
      print('Repository Error getCartItems: $e');
      return left(CartFailure.serverError());
    }
  }

  @override
  Future<Either<CartFailure, Unit>> deleteCart(int userId) async {
      final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.delete(
        "$api2/cart",
        data: {
          "userId": userId,
        },
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(CartFailure.notFound());
      }
    } catch (e) {
      print('Repository Error DELETE CART: $e');
      return left(CartFailure.serverError());
    }
  }

  @override
Future<Either<CartFailure, Unit>> removeFromCart(int userId, Cart cartItem) async {
      final String? token = await secureStorage.read("token");
  try {
    final response = await _dio.delete(
      "$api2/cart/item",
      data: {
        "userId": userId,
        "productId": cartItem.productId, 
      },
      options: Options(
        headers: <String, String>{
          'Authorization': 'Bearer $token',
        },
      ),
    );

    if (response.statusCode == 200) {
      return right(unit);
    } else {
      return left(CartFailure.notFound());
    }
  } catch (e) {
    print('Repository Error REMOVE FROM CART: $e');
    return left(CartFailure.serverError());
  }
}


}
