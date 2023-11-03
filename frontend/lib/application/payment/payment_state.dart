import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/payment/payment_failure.dart';
part 'payment_state.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;
  const factory PaymentState.actionInProgress() = _ActionInProgress;
  const factory PaymentState.createSuccess() = _CreateSuccess;
  const factory PaymentState.paymentFailure(PaymentFailure failure) = _PaymentFailure;
}
