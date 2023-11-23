// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelDtoImpl _$$ProductModelDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductModelDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      brandId: json['brand_id'] as int,
    );

Map<String, dynamic> _$$ProductModelDtoImplToJson(
        _$ProductModelDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'brand_id': instance.brandId,
    };
