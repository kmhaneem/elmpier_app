import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/orders/model/order_item.dart';
import 'package:frontend/domain/orders/model/order_item_failure.dart';
import 'package:frontend/domain/orders/model/order_status.dart';
part 'order_status_state.freezed.dart';

@freezed
abstract class OrderStatusState with _$OrderStatusState {
  const factory OrderStatusState.initial() = _Initial;
  const factory OrderStatusState.loadInProgress() = _LoadInProgress;
  const factory OrderStatusState.loadSuccess(OrderStatus orderStatus) =
      _LoadSuccess;
  const factory OrderStatusState.loadFailure(OrderItemFailure failure) =
      _LoadFailure;
}
