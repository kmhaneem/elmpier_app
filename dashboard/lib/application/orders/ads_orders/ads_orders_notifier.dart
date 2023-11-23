import 'package:dartz/dartz.dart';
import 'package:dashboard/application/orders/orders_state.dart';
import 'package:dashboard/domain/orders/i_orders_repository.dart';
import 'package:dashboard/domain/orders/orders.dart';
import 'package:dashboard/domain/orders/orders_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdsOrdersNotifier extends StateNotifier<OrdersState> {
  final IOrdersRepository _iOrdersRepository;

  AdsOrdersNotifier(this._iOrdersRepository)
      : super(OrdersState.initial()) {
    getAdsOrders();
  }

  Future<void> getAdsOrders() async {
    final Either<OrdersFailure, List<Orders>> failureOrOrders;

    state = const OrdersState.loadInProgress();

    failureOrOrders = await _iOrdersRepository.getAdsOrders();

    state = failureOrOrders.fold(
      (l) => OrdersState.loadFailure(l),
      (r) => OrdersState.loadAdsOrderssSuccess(r),
    );
  }
}
