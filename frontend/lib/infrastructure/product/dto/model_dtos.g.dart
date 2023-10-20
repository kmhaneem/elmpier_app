// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModelDto _$$_ProductModelDtoFromJson(Map<String, dynamic> json) =>
    _$_ProductModelDto(
      id: json['id'] as int,
      name: json['name'] as String,
      brandId: json['brand_id'] as int,
    );

Map<String, dynamic> _$$_ProductModelDtoToJson(_$_ProductModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'brand_id': instance.brandId,
    };
