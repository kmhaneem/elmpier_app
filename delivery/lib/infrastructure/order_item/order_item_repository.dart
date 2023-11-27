import 'package:dartz/dartz.dart';
import 'package:delivery/domain/order_item/i_order_item_repository.dart';
import 'package:delivery/domain/order_item/order_item_failure.dart';
import 'package:delivery/domain/order_item/order_item.dart';
import 'package:delivery/infrastructure/auth/secure_storage/secure_storage_service.dart';
import 'package:delivery/infrastructure/core/api.dart';
import 'package:delivery/infrastructure/order_item/dtos/order_item_dtos.dart';
import 'package:delivery/infrastructure/product/product_dtos.dart';
import 'package:dio/dio.dart';

import '../../domain/product/model/product.dart';

class OrderItemRepository implements IOrderItemRepository {
  final Dio _dio;
  final SecureStorageService secureStorage = SecureStorageService();
  
  OrderItemRepository(this._dio);
  @override
  Future<Either<OrderItemFailure, List<OrderItem>>> getAllOrderItems() async {
    try {
      final String? token = await secureStorage.read("token");
      final response = await _dio.get(
        "$api/delivery-person/order-item",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print(response.data["response"]);
      if (response.statusCode == 200) {
        final List<dynamic> orderItemsData = response.data["response"];
        final orderItemDto = orderItemsData
            .map((e) => OrderItemDto.fromJson(e as Map<String, dynamic>));
        final orderItems = orderItemDto.map((dto) => dto.toDomain()).toList();
        print("Double SUCCESS");
        return right(orderItems);
      } else {
        return left(OrderItemFailure.serverError());
      }
    } catch (error) {
      print("Error is $error");
      return left(const OrderItemFailure.serverError());
    }
  }

  @override
  Future<Either<OrderItemFailure, List<OrderItem>>>
      getAllDeliveryItems() async {
        final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/delivery-person/delivery-item",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print(response.data["response"]);
      if (response.statusCode == 200) {
        final List<dynamic> orderItemsData = response.data["response"];
        final orderItemDto = orderItemsData
            .map((e) => OrderItemDto.fromJson(e as Map<String, dynamic>));
        final orderItems = orderItemDto.map((dto) => dto.toDomain()).toList();
        print("SUCCESS");
        return right(orderItems);
      } else {
        return left(OrderItemFailure.serverError());
      }
    } catch (error) {
      print("Error is $error");
      return left(const OrderItemFailure.serverError());
    }
  }
  
  @override
  Future<Either<OrderItemFailure, List<OrderItem>>> getAllPickedItems() async {
    try {
      final response = await _dio.get(
        "$api/delivery-person/picked-items",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );
      print(response.data["response"]);
      if (response.statusCode == 200) {
        final List<dynamic> orderItemsData = response.data["response"];
        final orderItemDto = orderItemsData
            .map((e) => OrderItemDto.fromJson(e as Map<String, dynamic>));
        final orderItems = orderItemDto.map((dto) => dto.toDomain()).toList();
        print("SUCCESS");
        return right(orderItems);
      } else {
        return left(OrderItemFailure.serverError());
      }
    } catch (error) {
      print("Error is $error");
      return left(const OrderItemFailure.serverError());
    }
  }
  
  @override
  Future<Either<OrderItemFailure, List<OrderItem>>> getAllRejectedItems() async {
    try {
      final response = await _dio.get(
        "$api/delivery-person/rejected-items",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );
      print(response.data["response"]);
      if (response.statusCode == 200) {
        final List<dynamic> orderItemsData = response.data["response"];
        final orderItemDto = orderItemsData
            .map((e) => OrderItemDto.fromJson(e as Map<String, dynamic>));
        final orderItems = orderItemDto.map((dto) => dto.toDomain()).toList();
        print("SUCCESS");
        return right(orderItems);
      } else {
        return left(OrderItemFailure.serverError());
      }
    } catch (error) {
      print("Error is $error");
      return left(const OrderItemFailure.serverError());
    }
  }
}
