// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderItemDtoImpl _$$OrderItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemDtoImpl(
      id: json['id'] as int,
      orderId: json['order_id'] as int,
      productId: json['product_id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      imageUrl: json['image_url'] as String,
      itemQty: json['item_qty'] as int,
    );

Map<String, dynamic> _$$OrderItemDtoImplToJson(_$OrderItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.orderId,
      'product_id': instance.productId,
      'name': instance.name,
      'price': instance.price,
      'image_url': instance.imageUrl,
      'item_qty': instance.itemQty,
    };
