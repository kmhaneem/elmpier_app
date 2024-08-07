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
      price: json['price'] as int,
      conditonId: json['condition_id'] as int,
      categoryId: json['category_id'] as int,
      brandId: json['brand_id'] as int,
      modelId: json['model_id'] as int,
      provinceId: json['province_id'] as int?,
      districtId: json['district_id'] as int?,
      province: json['province'] as String?,
      district: json['district'] as String?,
      category: json['category'] as String?,
      condition: json['condition'] as String?,
      brand: json['brand'] as String?,
      model: json['model'] as String?,
      phone: json['phone'] as String?,
      userId: json['user_id'] as int?,
      advertiserName: json['advertiser_name'] as String?,
      createDate: json['create_date'] as String?,
      imageUrls: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AdvertisementDtoImplToJson(
        _$AdvertisementDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'condition_id': instance.conditonId,
      'category_id': instance.categoryId,
      'brand_id': instance.brandId,
      'model_id': instance.modelId,
      'province_id': instance.provinceId,
      'district_id': instance.districtId,
      'province': instance.province,
      'district': instance.district,
      'category': instance.category,
      'condition': instance.condition,
      'brand': instance.brand,
      'model': instance.model,
      'phone': instance.phone,
      'user_id': instance.userId,
      'advertiser_name': instance.advertiserName,
      'create_date': instance.createDate,
      'image_urls': instance.imageUrls,
    };
