import 'package:dartz/dartz.dart';
import 'package:delivery/application/oder_item/order_item_state.dart';
import 'package:delivery/domain/order_item/i_order_item_repository.dart';
import 'package:delivery/domain/order_item/order_item.dart';
import 'package:delivery/domain/order_item/order_item_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RejectedItemsNotifier extends StateNotifier<OrderItemState> {
  final IOrderItemRepository _iOrderItemRepository;

  RejectedItemsNotifier(this._iOrderItemRepository)
      : super(OrderItemState.initial()) {
    getAllRejectedItems();
  }

  Future<void> getAllRejectedItems() async {
    final Either<OrderItemFailure, List<OrderItem>> failureOrOrderItem;

    state = OrderItemState.loadInProgress();

    failureOrOrderItem = await _iOrderItemRepository.getAllRejectedItems();

    state = failureOrOrderItem.fold(
      (l) => OrderItemState.loadFailure(l),
      (r) => OrderItemState.rejectedItemsLoaded(r),
    );
  }
}
