// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderStatusDtoImpl _$$OrderStatusDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrderStatusDtoImpl(
      id: json['id'] as int,
      statusName: json['status_name'] as String,
    );

Map<String, dynamic> _$$OrderStatusDtoImplToJson(
        _$OrderStatusDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status_name': instance.statusName,
    };
