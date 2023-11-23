// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentDtoImpl _$$PaymentDtoImplFromJson(Map<String, dynamic> json) =>
    _$PaymentDtoImpl(
      sandbox: json['sandbox'] as bool,
      merchantId: json['merchant_id'] as String,
      merchantSecret: json['merchant_secret'] as String,
      notifyUrl: json['notify_url'] as String,
      orderId: json['order_id'] as String,
      items: json['items'] as String,
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      deliveryAddress: json['delivery_address'] as String,
      deliveryCity: json['delivery_city'] as String,
      deliveryCountry: json['delivery_country'] as String,
    );

Map<String, dynamic> _$$PaymentDtoImplToJson(_$PaymentDtoImpl instance) =>
    <String, dynamic>{
      'sandbox': instance.sandbox,
      'merchant_id': instance.merchantId,
      'merchant_secret': instance.merchantSecret,
      'notify_url': instance.notifyUrl,
      'order_id': instance.orderId,
      'items': instance.items,
      'amount': instance.amount,
      'currency': instance.currency,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'city': instance.city,
      'country': instance.country,
      'delivery_address': instance.deliveryAddress,
      'delivery_city': instance.deliveryCity,
      'delivery_country': instance.deliveryCountry,
    };
