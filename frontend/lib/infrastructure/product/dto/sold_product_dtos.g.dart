// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sold_product_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SoldProductDtoImpl _$$SoldProductDtoImplFromJson(Map<String, dynamic> json) =>
    _$SoldProductDtoImpl(
      productId: json['product_id'] as int,
      name: json['name'] as String,
      price: json['price'] as int,
      imageUrl: json['image_url'] as String,
      totalQty: json['total_qty'] as int,
    );

Map<String, dynamic> _$$SoldProductDtoImplToJson(
        _$SoldProductDtoImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'name': instance.name,
      'price': instance.price,
      'image_url': instance.imageUrl,
      'total_qty': instance.totalQty,
    };
