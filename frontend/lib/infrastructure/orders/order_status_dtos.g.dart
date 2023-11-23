// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderStatusDtoImpl _$$OrderStatusDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrderStatusDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      imageUrl: json['image_url'] as String,
      isPickup: json['is_pickup'] as bool,
      isWarehouse: json['is_warehouse'] as bool,
      isDelivered: json['is_delivered'] as bool,
    );

Map<String, dynamic> _$$OrderStatusDtoImplToJson(
        _$OrderStatusDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'is_pickup': instance.isPickup,
      'is_warehouse': instance.isWarehouse,
      'is_delivered': instance.isDelivered,
    };
