import 'package:dartz/dartz.dart';
import 'package:dashboard/core/api.dart';
import 'package:dashboard/domain/orders/i_orders_repository.dart';
import 'package:dashboard/domain/orders/order_status.dart';
import 'package:dashboard/domain/orders/orders.dart';
import 'package:dashboard/domain/orders/orders_failure.dart';
import 'package:dashboard/infrastructure/auth/secure_storage/secure_storage_service.dart';
import 'package:dashboard/infrastructure/orders/dtos/orders_dto.dart';
import 'package:dio/dio.dart';

class OrdersRepository implements IOrdersRepository {
  final Dio _dio;
  final SecureStorageService secureStorage = SecureStorageService();
  OrdersRepository(this._dio);

  @override
  Future<Either<OrdersFailure, List<Orders>>> getAdsOrders() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/admin/orders/ads",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print("Response is: $response");

      if (response.statusCode == 200) {
        final ordersDto = (response.data['response'] as List)
            .map((e) => OrdersDto.fromJson(e));
        final products = ordersDto.map((dto) => dto.toDomain()).toList();
        print("ADS ORDERS SUCCESSS");
        return right(products);
      } else {
        return left(const OrdersFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const OrdersFailure.serverError());
    }
  }

  @override
  Future<Either<OrdersFailure, List<Orders>>> getProductOrders() async {
    final String? token = await secureStorage.read("token");
    try {
      final response = await _dio.get(
        "$api/admin/orders/products",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token',
          },
        ),
      );

      print("Response is: $response");

      if (response.statusCode == 200) {
        final ordersDto = (response.data['response'] as List)
            .map((e) => OrdersDto.fromJson(e));
        final orders = ordersDto.map((dto) => dto.toDomain()).toList();

        return right(orders);
      } else {
        return left(const OrdersFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const OrdersFailure.serverError());
    }
  }

  @override
  Future<Either<OrdersFailure, OrderStatus>> getOrderStatus(int id) async {
    try {
      final response = await _dio.get(
        "$api/admin/order/status/${id}",
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );

      print("Response is: $response");

      if (response.statusCode == 200) {
        final ordersDto =
            (response.data['response'][0]).map((e) => OrdersDto.fromJson(e));
        final orders = ordersDto.map((dto) => dto.toDomain());

        return right(orders);
      } else {
        return left(const OrdersFailure.notFound());
      }
    } on DioException catch (e) {
      print("Error Is $e");
      return left(const OrdersFailure.serverError());
    }
  }
}
