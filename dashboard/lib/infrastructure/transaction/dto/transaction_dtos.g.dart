// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDtoImpl _$$TransactionDtoImplFromJson(Map<String, dynamic> json) =>
    _$TransactionDtoImpl(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      paymentMethod: json['payment_method'] as String,
      status: json['status'] as String,
      paymentId: json['payment_id'] as String,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$TransactionDtoImplToJson(
        _$TransactionDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'payment_method': instance.paymentMethod,
      'status': instance.status,
      'payment_id': instance.paymentId,
      'username': instance.username,
    };
