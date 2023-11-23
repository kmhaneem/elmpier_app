import 'package:dio/dio.dart';
import 'package:frontend/domain/orders/model/order_item_failure.dart';

import 'package:frontend/domain/orders/model/order_item.dart';

import 'package:dartz/dartz.dart';
import 'package:frontend/domain/orders/model/order_status.dart';
import 'package:frontend/infrastructure/core/api.dart';
import 'package:frontend/infrastructure/orders/order_item_dto.dart';
import 'package:frontend/infrastructure/orders/order_status_dtos.dart';

import '../../domain/orders/i_order_item_repository.dart';
import '../auth/secure_storage/secure_storage_service.dart';

class OrderItemRepository implements IOrderItemRepository {
  final Dio _dio;
  final SecureStorageService secureStorage = SecureStorageService();
  OrderItemRepository(this._dio);
  @override
  Future<Either<OrderItemFailure, List<OrderItem>>> getOrderItems() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api2/orders",
        options: Options(
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        ),
      );

      print(response.data);

      if (response.statusCode == 200) {
        final orderItemsDto = (response.data['response'] as List)
            .map((e) => OrderItemDto.fromJson(e));
        final orderItems = orderItemsDto.map((dto) => dto.toDomain()).toList();
        return right(orderItems);
      } else {
        return left(const OrderItemFailure.serverError());
      }

    } catch (e) {
      print("Error Is in order repo $e");
      return left(const OrderItemFailure.serverError());
    }
  }
  
  @override
  Future<Either<OrderItemFailure, OrderStatus>> getOrderItemsStatus(int id) async {
    try {
      final response = await _dio.get(
        "$api2/orders/order-item/status",
        data: {"id": id},
        options: Options(
          headers: <String, String>{
          },
        ),
      );
      if (response.statusCode == 200) {
        final orderStatusDto =
            OrderStatusDto.fromJson(response.data["response"][0]);
        final orderItemStatus = orderStatusDto.toDomain();
        return right(orderItemStatus);
      } else {
        return left(const OrderItemFailure.serverError());
      }
    } catch (error) {
      return left(const OrderItemFailure.serverError());
    }
  }
}
