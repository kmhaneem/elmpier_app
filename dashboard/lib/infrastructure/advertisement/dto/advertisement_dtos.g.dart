// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertisement_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdvertisementDtoImpl _$$AdvertisementDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AdvertisementDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      category: json['category_id'] as int,
      brand: json['brand_id'] as int,
      model: json['model_id'] as int,
      imageUrls: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      price: json['price'] as int,
    );

Map<String, dynamic> _$$AdvertisementDtoImplToJson(
        _$AdvertisementDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category_id': instance.category,
      'brand_id': instance.brand,
      'model_id': instance.model,
      'image_urls': instance.imageUrls,
      'price': instance.price,
    };
