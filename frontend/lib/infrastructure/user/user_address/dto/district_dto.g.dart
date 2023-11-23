// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DistrictDtoImpl _$$DistrictDtoImplFromJson(Map<String, dynamic> json) =>
    _$DistrictDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      provinceId: json['province_id'] as int,
    );

Map<String, dynamic> _$$DistrictDtoImplToJson(_$DistrictDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'province_id': instance.provinceId,
    };
