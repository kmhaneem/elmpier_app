import 'package:dartz/dartz.dart';
import 'package:delivery/domain/order_item/order_item.dart';
import 'package:delivery/domain/order_item/order_item_failure.dart';

abstract class IOrderItemRepository {
   Future<Either<OrderItemFailure, List<OrderItem>>> getAllOrderItems();
   Future<Either<OrderItemFailure, List<OrderItem>>> getAllDeliveryItems();
   Future<Either<OrderItemFailure, List<OrderItem>>> getAllPickedItems();
   Future<Either<OrderItemFailure, List<OrderItem>>> getAllRejectedItems();
   
}
