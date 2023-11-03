// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderItemDto _$$_OrderItemDtoFromJson(Map<String, dynamic> json) =>
    _$_OrderItemDto(
      orderId: json['order_id'] as int,
      productId: json['product_id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      imageUrl: json['image_url'] as String,
      itemQty: json['image_qty'] as int,
    );

Map<String, dynamic> _$$_OrderItemDtoToJson(_$_OrderItemDto instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'product_id': instance.productId,
      'name': instance.name,
      'price': instance.price,
      'image_url': instance.imageUrl,
      'image_qty': instance.itemQty,
    };
