import 'package:dartz/dartz.dart';
import 'package:dashboard/domain/orders/order_status.dart';
import 'package:dashboard/domain/orders/orders.dart';
import 'package:dashboard/domain/orders/orders_failure.dart';

abstract class IOrdersRepository {
  Future<Either<OrdersFailure, List<Orders>>> getProductOrders();
  Future<Either<OrdersFailure, List<Orders>>> getAdsOrders();
  Future<Either<OrdersFailure, OrderStatus>> getOrderStatus(int id);
}