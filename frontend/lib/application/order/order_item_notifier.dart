import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/order/order_item_state.dart';
import 'package:frontend/domain/orders/i_order_item_repository.dart';
import 'package:frontend/domain/orders/model/order_item.dart';
import 'package:frontend/domain/orders/model/order_item_failure.dart';

import '../../domain/product/model/product.dart';
import '../../domain/product/product_failure.dart';

class OrderItemNotifier extends StateNotifier<OrderItemStates> {
  final IOrderItemRepository _iOrderItemRepository;
  bool _hasFetchedOrderItems = false;

  OrderItemNotifier(this._iOrderItemRepository)
      : super(const OrderItemStates.initial());

  void watchAllStarted() async {
    if (_hasFetchedOrderItems) return;
    state = const OrderItemStates.initial();
    final failureOrProducts = await _iOrderItemRepository.getOrderItems();
    orderItemsReceived(failureOrProducts);
    _hasFetchedOrderItems = true;
  }

  void orderItemsReceived(
      Either<OrderItemFailure, List<OrderItem>> failureOrProduct) {
    state = failureOrProduct.fold(
      (f) => OrderItemStates.loadFailure(f),
      (products) => OrderItemStates.loadSuccess(products),
    );
  }
}
