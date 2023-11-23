import 'package:dartz/dartz.dart';
import 'package:dashboard/application/orders/orders_state.dart';
import 'package:dashboard/domain/orders/i_orders_repository.dart';
import 'package:dashboard/domain/orders/orders.dart';
import 'package:dashboard/domain/orders/orders_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductOrdersNotifier extends StateNotifier<OrdersState> {
  final IOrdersRepository _iOrdersRepository;

  ProductOrdersNotifier(this._iOrdersRepository)
      : super(OrdersState.initial()) {
    getProductOrders();
  }

  Future<void> getProductOrders() async {
    final Either<OrdersFailure, List<Orders>> failureOrOrders;

    state = const OrdersState.loadInProgress();

    failureOrOrders = await _iOrdersRepository.getProductOrders();

    state = failureOrOrders.fold(
      (l) => OrdersState.loadFailure(l),
      (r) => OrdersState.loadProductOrderssSuccess(r),
    );
  }
}
