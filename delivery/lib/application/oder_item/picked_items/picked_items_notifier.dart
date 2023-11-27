import 'package:dartz/dartz.dart';
import 'package:delivery/application/oder_item/order_item_state.dart';
import 'package:delivery/domain/order_item/i_order_item_repository.dart';
import 'package:delivery/domain/order_item/order_item.dart';
import 'package:delivery/domain/order_item/order_item_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PickedItemsNotifier extends StateNotifier<OrderItemState> {
  final IOrderItemRepository _iOrderItemRepository;

  PickedItemsNotifier(this._iOrderItemRepository)
      : super(OrderItemState.initial()) {
    getAllPickedItems();
  }

  Future<void> getAllPickedItems() async {
    final Either<OrderItemFailure, List<OrderItem>> failureOrOrderItem;

    state = OrderItemState.loadInProgress();

    failureOrOrderItem = await _iOrderItemRepository.getAllPickedItems();

    state = failureOrOrderItem.fold(
      (l) => OrderItemState.loadFailure(l),
      (r) => OrderItemState.pickedItemsLoaded(r),
    );
  }
}
