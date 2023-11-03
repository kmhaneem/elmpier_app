import 'package:dartz/dartz.dart';
import 'package:frontend/domain/orders/model/order_item.dart';
import 'package:frontend/domain/orders/model/order_item_failure.dart';

abstract class IOrderItemRepository {
  Future<Either<OrderItemFailure, List<OrderItem>>> getOrderItems();
}
