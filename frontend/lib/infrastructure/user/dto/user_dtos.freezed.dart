// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "firstname")
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "lastname")
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "address_line_1")
  String get addressLine1 => throw _privateConstructorUsedError;
  @JsonKey(name: "address_line_2")
  String get addressLine2 => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: "postal_code")
  String get postalCode => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get province => throw _privateConstructorUsedError;
  @JsonKey(name: "province_id")
  int? get provinceId => throw _privateConstructorUsedError;
  @JsonKey(name: "district_id")
  int? get districtId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call(
      {String email,
      String phone,
      @JsonKey(name: "firstname") String firstName,
      @JsonKey(name: "lastname") String lastName,
      @JsonKey(name: "address_line_1") String addressLine1,
      @JsonKey(name: "address_line_2") String addressLine2,
      String city,
      @JsonKey(name: "postal_code") String postalCode,
      String? district,
      String? province,
      @JsonKey(name: "province_id") int? provinceId,
      @JsonKey(name: "district_id") int? districtId});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phone = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? addressLine1 = null,
    Object? addressLine2 = null,
    Object? city = null,
    Object? postalCode = null,
    Object? district = freezed,
    Object? province = freezed,
    Object? provinceId = freezed,
    Object? districtId = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine1: null == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine2: null == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDtoImplCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$UserDtoImplCopyWith(
          _$UserDtoImpl value, $Res Function(_$UserDtoImpl) then) =
      __$$UserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String phone,
      @JsonKey(name: "firstname") String firstName,
      @JsonKey(name: "lastname") String lastName,
      @JsonKey(name: "address_line_1") String addressLine1,
      @JsonKey(name: "address_line_2") String addressLine2,
      String city,
      @JsonKey(name: "postal_code") String postalCode,
      String? district,
      String? province,
      @JsonKey(name: "province_id") int? provinceId,
      @JsonKey(name: "district_id") int? districtId});
}

/// @nodoc
class __$$UserDtoImplCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$UserDtoImpl>
    implements _$$UserDtoImplCopyWith<$Res> {
  __$$UserDtoImplCopyWithImpl(
      _$UserDtoImpl _value, $Res Function(_$UserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phone = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? addressLine1 = null,
    Object? addressLine2 = null,
    Object? city = null,
    Object? postalCode = null,
    Object? district = freezed,
    Object? province = freezed,
    Object? provinceId = freezed,
    Object? districtId = freezed,
  }) {
    return _then(_$UserDtoImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine1: null == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine2: null == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDtoImpl extends _UserDto {
  const _$UserDtoImpl(
      {required this.email,
      required this.phone,
      @JsonKey(name: "firstname") required this.firstName,
      @JsonKey(name: "lastname") required this.lastName,
      @JsonKey(name: "address_line_1") required this.addressLine1,
      @JsonKey(name: "address_line_2") required this.addressLine2,
      required this.city,
      @JsonKey(name: "postal_code") required this.postalCode,
      this.district,
      this.province,
      @JsonKey(name: "province_id") this.provinceId,
      @JsonKey(name: "district_id") this.districtId})
      : super._();

  factory _$UserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDtoImplFromJson(json);

  @override
  final String email;
  @override
  final String phone;
  @override
  @JsonKey(name: "firstname")
  final String firstName;
  @override
  @JsonKey(name: "lastname")
  final String lastName;
  @override
  @JsonKey(name: "address_line_1")
  final String addressLine1;
  @override
  @JsonKey(name: "address_line_2")
  final String addressLine2;
  @override
  final String city;
  @override
  @JsonKey(name: "postal_code")
  final String postalCode;
  @override
  final String? district;
  @override
  final String? province;
  @override
  @JsonKey(name: "province_id")
  final int? provinceId;
  @override
  @JsonKey(name: "district_id")
  final int? districtId;

  @override
  String toString() {
    return 'UserDto(email: $email, phone: $phone, firstName: $firstName, lastName: $lastName, addressLine1: $addressLine1, addressLine2: $addressLine2, city: $city, postalCode: $postalCode, district: $district, province: $province, provinceId: $provinceId, districtId: $districtId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDtoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.addressLine1, addressLine1) ||
                other.addressLine1 == addressLine1) &&
            (identical(other.addressLine2, addressLine2) ||
                other.addressLine2 == addressLine2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      phone,
      firstName,
      lastName,
      addressLine1,
      addressLine2,
      city,
      postalCode,
      district,
      province,
      provinceId,
      districtId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      __$$UserDtoImplCopyWithImpl<_$UserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDtoImplToJson(
      this,
    );
  }
}

abstract class _UserDto extends UserDto {
  const factory _UserDto(
      {required final String email,
      required final String phone,
      @JsonKey(name: "firstname") required final String firstName,
      @JsonKey(name: "lastname") required final String lastName,
      @JsonKey(name: "address_line_1") required final String addressLine1,
      @JsonKey(name: "address_line_2") required final String addressLine2,
      required final String city,
      @JsonKey(name: "postal_code") required final String postalCode,
      final String? district,
      final String? province,
      @JsonKey(name: "province_id") final int? provinceId,
      @JsonKey(name: "district_id") final int? districtId}) = _$UserDtoImpl;
  const _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$UserDtoImpl.fromJson;

  @override
  String get email;
  @override
  String get phone;
  @override
  @JsonKey(name: "firstname")
  String get firstName;
  @override
  @JsonKey(name: "lastname")
  String get lastName;
  @override
  @JsonKey(name: "address_line_1")
  String get addressLine1;
  @override
  @JsonKey(name: "address_line_2")
  String get addressLine2;
  @override
  String get city;
  @override
  @JsonKey(name: "postal_code")
  String get postalCode;
  @override
  String? get district;
  @override
  String? get province;
  @override
  @JsonKey(name: "province_id")
  int? get provinceId;
  @override
  @JsonKey(name: "district_id")
  int? get districtId;
  @override
  @JsonKey(ignore: true)
  _$$UserDtoImplCopyWith<_$UserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
