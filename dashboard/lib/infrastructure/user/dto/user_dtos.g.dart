// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      id: json['id'] as int,
      email: json['email'] as String,
      phone: json['phone'] as String,
      firstName: json['firstname'] as String?,
      lastName: json['lastname'] as String?,
      addressLine1: json['address_line_1'] as String?,
      addressLine2: json['address_line_2'] as String?,
      city: json['city'] as String?,
      postalCode: json['postal_code'] as int?,
      district: json['district'] as String?,
      province: json['province'] as String?,
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'firstname': instance.firstName,
      'lastname': instance.lastName,
      'address_line_1': instance.addressLine1,
      'address_line_2': instance.addressLine2,
      'city': instance.city,
      'postal_code': instance.postalCode,
      'district': instance.district,
      'province': instance.province,
      'verified': instance.verified,
    };
