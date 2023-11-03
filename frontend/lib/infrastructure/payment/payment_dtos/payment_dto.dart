import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_dto.freezed.dart';
part 'payment_dto.g.dart';

// @JsonSerializable()
@freezed
class PaymentDto with _$PaymentDto {
  const PaymentDto._();

  const factory PaymentDto({
    required bool sandbox,
    @JsonKey(name: "merchant_id") required String merchantId,
    @JsonKey(name: "merchant_secret") required String merchantSecret,
    @JsonKey(name: "notify_url") required String notifyUrl,
    @JsonKey(name: "order_id") required String orderId,
    required String items,
    required double amount,
    required String currency,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    required String email,
    required String phone,
    required String address,
    required String city,
    required String country,
    @JsonKey(name: "delivery_address") required String deliveryAddress,
    @JsonKey(name: "delivery_city") required String deliveryCity,
    @JsonKey(name: "delivery_country") required String deliveryCountry,
  }) = _PaymentDto;

  factory PaymentDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentDtoFromJson(json);

  
}
