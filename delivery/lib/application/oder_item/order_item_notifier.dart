import 'package:dartz/dartz.dart';
import 'package:delivery/application/oder_item/order_item_state.dart';
import 'package:delivery/domain/order_item/i_order_item_repository.dart';
import 'package:delivery/domain/order_item/order_item.dart';
import 'package:delivery/domain/order_item/order_item_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrderItemNotifier extends StateNotifier<OrderItemState> {
  final IOrderItemRepository _iOrderItemRepository;

  OrderItemNotifier(this._iOrderItemRepository)
      : super(OrderItemState.initial()) {
    getAllOrderItem();
  }

  Future<void> getAllOrderItem() async {
    final Either<OrderItemFailure, List<OrderItem>> failureOrOrderItem;

    state = OrderItemState.loadInProgress();

    failureOrOrderItem = await _iOrderItemRepository.getAllOrderItems();

    state = failureOrOrderItem.fold(
      (l) => OrderItemState.loadFailure(l),
      (r) => OrderItemState.loadSuccess(r),
    );
  }
}
