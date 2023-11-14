// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionDto _$$_TransactionDtoFromJson(Map<String, dynamic> json) =>
    _$_TransactionDto(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      paymentMethod: json['payment_method'] as String,
      status: json['status'] as String,
      paymentId: json['payment_id'] as String,
    );

Map<String, dynamic> _$$_TransactionDtoToJson(_$_TransactionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'payment_method': instance.paymentMethod,
      'status': instance.status,
      'payment_id': instance.paymentId,
    };
