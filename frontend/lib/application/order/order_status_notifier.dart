import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/order/order_item_state.dart';
import 'package:frontend/application/order/order_status_state.dart';
import 'package:frontend/domain/orders/i_order_item_repository.dart';
import 'package:frontend/domain/orders/model/order_item_failure.dart';
import 'package:frontend/domain/orders/model/order_status.dart';

class OrderStatusNotifier extends StateNotifier<OrderStatusState> {
  final IOrderItemRepository _iOrderItemRepository;

  OrderStatusNotifier(this._iOrderItemRepository)
      : super(OrderStatusState.initial());

  Future<void> getOrderStatus(int id) async {
    Either<OrderItemFailure, OrderStatus> failureOrOrderStatus;

    state = OrderStatusState.loadInProgress();

    failureOrOrderStatus = await _iOrderItemRepository.getOrderItemsStatus(id);

    state = failureOrOrderStatus.fold((l) => OrderStatusState.loadFailure(l),
        (r) => OrderStatusState.loadSuccess(r));
  }
}
