import 'package:dartz/dartz.dart';
import 'package:frontend/domain/orders/model/order_item.dart';
import 'package:frontend/domain/orders/model/order_item_failure.dart';
import 'package:frontend/domain/orders/model/order_status.dart';

abstract class IOrderItemRepository {
  Future<Either<OrderItemFailure, List<OrderItem>>> getOrderItems();
  Future<Either<OrderItemFailure, OrderStatus>> getOrderItemsStatus(int id);
}
