import 'package:delivery/domain/order_item/order_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/order_item/order_item_failure.dart';

part 'delivery_item_state.freezed.dart';

@freezed
abstract class DeliveryItemState with _$DeliveryItemState {
  const factory DeliveryItemState.initial() = _Initial;
  const factory DeliveryItemState.loadInProgress() = _LoadInProgress;
  const factory DeliveryItemState.loadSuccess(List<OrderItem> orderItem) =
      _LoadSuccess;
  const factory DeliveryItemState.loadFailure(OrderItemFailure failure) =
      _LoadFailure;
  const factory DeliveryItemState.deliverySuccess() =
      _DeliverySuccess;
}
