import 'package:freezed_annotation/freezed_annotation.dart';
part '../payment.freezed.dart';

@freezed
abstract class Payment with _$Payment {
  const factory Payment({
    required bool sandbox,
    required String merchantId,
    required String merchantSecret,
    required String notifyUrl,
    required String orderId,
    required String items,
    required double amount,
    required String currency,
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String address,
    required String city,
    required String country,
    required String deliveryAddress,
    required String deliveryCity,
    required String deliveryCountry,
  }) = _Payment;
}
