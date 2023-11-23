// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductBrandDtoImpl _$$ProductBrandDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductBrandDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      categoryId: json['category_id'] as int,
    );

Map<String, dynamic> _$$ProductBrandDtoImplToJson(
        _$ProductBrandDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category_id': instance.categoryId,
    };
