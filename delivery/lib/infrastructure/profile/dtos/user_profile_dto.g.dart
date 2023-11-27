// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileDtoImpl _$$UserProfileDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      province: json['province'] as String,
      district: json['district'] as String,
    );

Map<String, dynamic> _$$UserProfileDtoImplToJson(
        _$UserProfileDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'province': instance.province,
      'district': instance.district,
    };
