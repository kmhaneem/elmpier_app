// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDto _$$_OrderDtoFromJson(Map<String, dynamic> json) => _$_OrderDto(
      userId: json['user_id'] as int,
      paymentMethod: json['payment_method'] as String,
      status: json['status'] as String,
      paymentId: json['payment_id'] as String,
      statusId: json['status_id'] as int,
      amount: json['amount'] as int,
    );

Map<String, dynamic> _$$_OrderDtoToJson(_$_OrderDto instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'payment_method': instance.paymentMethod,
      'status': instance.status,
      'payment_id': instance.paymentId,
      'status_id': instance.statusId,
      'amount': instance.amount,
    };
