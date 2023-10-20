// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthDto _$$_AuthDtoFromJson(Map<String, dynamic> json) => _$_AuthDto(
      id: json['id'] as int,
      email: json['email'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      otp: json['otp'] as int,
      salt: json['salt'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      profile: json['profile'] as String,
      verified: json['verified'] as bool,
    );

Map<String, dynamic> _$$_AuthDtoToJson(_$_AuthDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'otp': instance.otp,
      'salt': instance.salt,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'profile': instance.profile,
      'verified': instance.verified,
    };
