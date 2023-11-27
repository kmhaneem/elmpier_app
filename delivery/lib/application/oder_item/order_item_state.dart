import 'package:delivery/domain/order_item/order_item.dart';
import 'package:delivery/domain/order_item/order_item_failure.dart';
import 'package:delivery/domain/product/model/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_item_state.freezed.dart';


@freezed
abstract class OrderItemState with _$OrderItemState {
  const factory OrderItemState.initial() = _Initial;
  const factory OrderItemState.loadInProgress() = _LoadInProgress;
  const factory OrderItemState.loadSuccess(List<OrderItem> orderItem) = _LoadSuccess;
  const factory OrderItemState.deliveryItemLoad(List<OrderItem> orderItem) = _DeliveryItemLoad;
  const factory OrderItemState.pickedItemsLoaded(List<OrderItem> orderItem) = _PickedItemsLoaded;
  const factory OrderItemState.rejectedItemsLoaded(List<OrderItem> orderItem) = _rejectedItemsLoaded;
  const factory OrderItemState.productLoaded(Product product) = _ProductLoaded;
  const factory OrderItemState.loadFailure(OrderItemFailure orderItemFailure) =
      _LoadFailure;
}

