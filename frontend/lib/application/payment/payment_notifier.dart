import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/payment/payment_state.dart';
import 'package:frontend/domain/orders/model/orders.dart';
import 'package:frontend/domain/payment/i_payment_repository.dart';
import 'package:frontend/domain/payment/payment_failure.dart';

import '../../domain/cart/cart_failure.dart';

class PaymentNotifier extends StateNotifier<PaymentState> {
  final IPaymentRepository _iPaymentRepository;

  PaymentNotifier(this._iPaymentRepository)
      : super(const PaymentState.initial());

  Future<void> createPayment(Orders order) async {
    Either<PaymentFailure, Unit> failureOrSuccess;
    state = const PaymentState.actionInProgress();

    failureOrSuccess = await _iPaymentRepository.makePayment(order);

    state = failureOrSuccess.fold(
      (failure) {
        print("Failed to notify backend: $failure");
        return PaymentState.paymentFailure(failure);
      },
      (r) {
        print("Successfully notified backend");
        return const PaymentState.createSuccess();
      },
    );
  }
}
