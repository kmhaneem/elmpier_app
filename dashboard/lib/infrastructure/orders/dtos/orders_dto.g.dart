// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrdersDtoImpl _$$OrdersDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrdersDtoImpl(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      statusId: json['status_id'] as int,
      amount: json['amount'] as int,
      transactionId: json['transaction_id'] as int,
      statusName: json['status_name'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$OrdersDtoImplToJson(_$OrdersDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'status_id': instance.statusId,
      'amount': instance.amount,
      'transaction_id': instance.transactionId,
      'status_name': instance.statusName,
      'username': instance.username,
    };
