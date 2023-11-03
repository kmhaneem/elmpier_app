import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/orders/model/order_item.dart';
import 'package:frontend/domain/orders/model/order_item_failure.dart';
import 'package:frontend/domain/product/product_failure.dart';
import '../../../domain/product/model/product.dart';
part 'order_item_state.freezed.dart';

@freezed
abstract class OrderItemStates with _$OrderItemStates {
  const factory OrderItemStates.initial() = _Initial;
  const factory OrderItemStates.loadInProgress() = _LoadInProgress;
  const factory OrderItemStates.loadSuccess(List<OrderItem> product) = _LoadSuccess;
  const factory OrderItemStates.loadFailure(OrderItemFailure failure) =
      _LoadFailure;
}


