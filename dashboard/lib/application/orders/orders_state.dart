import 'package:dashboard/domain/orders/orders.dart';
import 'package:dashboard/domain/orders/orders_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'orders_state.freezed.dart';

@freezed
abstract class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = _Initial;
  const factory OrdersState.loadInProgress() = _LoadInProgress;
  const factory OrdersState.loadFailure(OrdersFailure ordersFailure) =
      _LoadFailure;

  const factory OrdersState.loadProductOrderssSuccess(List<Orders> orders) = _LoadProductOrderssSuccess;
  const factory OrdersState.loadAdsOrderssSuccess(List<Orders> orders) = _LoadAdsProductsSuccess;
  const factory OrdersState.loadOrderStatus() = _LoadOrderStatus;

}

