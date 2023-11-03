// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DistrictDto _$$_DistrictDtoFromJson(Map<String, dynamic> json) =>
    _$_DistrictDto(
      id: json['id'] as int,
      name: json['name'] as String,
      provinceId: json['province_id'] as int,
    );

Map<String, dynamic> _$$_DistrictDtoToJson(_$_DistrictDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'province_id': instance.provinceId,
    };
