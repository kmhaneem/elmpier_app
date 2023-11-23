import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/orders/model/order_item.dart';
import 'package:frontend/domain/orders/model/order_item_failure.dart';
import 'package:frontend/domain/orders/model/order_status.dart';
import 'package:frontend/domain/product/product_failure.dart';
import '../../../domain/product/model/product.dart';
part 'order_item_state.freezed.dart';

@freezed
abstract class OrderItemState with _$OrderItemState {
  const factory OrderItemState.initial() = _Initial;
  const factory OrderItemState.loadInProgress() = _LoadInProgress;
  const factory OrderItemState.loadSuccess(List<OrderItem> product) =
      _LoadSuccess;
  const factory OrderItemState.loadFailure(OrderItemFailure failure) =
      _LoadFailure;
}
