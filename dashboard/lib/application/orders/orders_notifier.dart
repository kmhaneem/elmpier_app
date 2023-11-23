import 'package:dartz/dartz.dart';
import 'package:dashboard/application/orders/orders_state.dart';
import 'package:dashboard/domain/orders/i_orders_repository.dart';
import 'package:dashboard/domain/orders/order_status.dart';
import 'package:dashboard/domain/orders/orders_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrdersNotifier extends StateNotifier<OrdersState> {
  final IOrdersRepository _iOrdersRepository;

  OrdersNotifier(this._iOrdersRepository) : super(OrdersState.initial()) {}

  Future<void> getOrderStatus(int id) async {
    Either<OrdersFailure, OrderStatus> failureOrOrderStatus;

    state = OrdersState.loadInProgress();

    failureOrOrderStatus = await _iOrdersRepository.getOrderStatus(id);

    state = failureOrOrderStatus.fold(
      (l) => OrdersState.loadFailure(l),
      (r) => OrdersState.loadOrderStatus(),
    );
  }
}
