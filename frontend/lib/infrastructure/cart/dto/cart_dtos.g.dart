// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartDtoImpl _$$CartDtoImplFromJson(Map<String, dynamic> json) =>
    _$CartDtoImpl(
      productId: json['product_id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      itemQty: json['item_qty'] as int,
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$$CartDtoImplToJson(_$CartDtoImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'name': instance.name,
      'price': instance.price,
      'item_qty': instance.itemQty,
      'image_url': instance.imageUrl,
    };
