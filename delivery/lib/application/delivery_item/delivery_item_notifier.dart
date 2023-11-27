import 'package:dartz/dartz.dart';
import 'package:delivery/domain/order_item/i_order_item_repository.dart';
import 'package:delivery/domain/order_item/order_item.dart';
import 'package:delivery/domain/order_item/order_item_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'delivery_item_state.dart';

class DeliveryItemNotifier extends StateNotifier<DeliveryItemState> {
  final IOrderItemRepository _iOrderItemRepository;

  DeliveryItemNotifier(this._iOrderItemRepository)
      : super(DeliveryItemState.initial()) {
    getAllDeliveryItem();
  }

  Future<void> getAllDeliveryItem() async {
    final Either<OrderItemFailure, List<OrderItem>> failureOrOrderItem;

    state = DeliveryItemState.loadInProgress();

    failureOrOrderItem = await _iOrderItemRepository.getAllDeliveryItems();

    state = failureOrOrderItem.fold(
      (l) => DeliveryItemState.loadFailure(l),
      (r) => DeliveryItemState.loadSuccess(r)
    );
  }

  
}
