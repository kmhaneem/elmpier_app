import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_failure.freezed.dart';

@freezed
abstract class PaymentFailure implements _$PaymentFailure {
  const factory PaymentFailure.serverError() = _ServerError;
  const factory PaymentFailure.invalidPaymentDetails() = _InvalidPaymentDetails;
  const factory PaymentFailure.insufficientFunds() = _InsufficientFunds;
  const factory PaymentFailure.transactionTimeout() = _TransactionTimeout;
  const factory PaymentFailure.paymentDenied() = _PaymentDenied;
  const factory PaymentFailure.paymentLimitExceeded() = _PaymentLimitExceeded;
  const factory PaymentFailure.networkError() = _NetworkError;
  const factory PaymentFailure.invalidMerchantDetails() =
      _InvalidMerchantDetails;
}
