// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductBrandDto _$$_ProductBrandDtoFromJson(Map<String, dynamic> json) =>
    _$_ProductBrandDto(
      id: json['id'] as int,
      name: json['name'] as String,
      categoryId: json['category_id'] as int,
    );

Map<String, dynamic> _$$_ProductBrandDtoToJson(_$_ProductBrandDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category_id': instance.categoryId,
    };
