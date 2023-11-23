// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthDto _$AuthDtoFromJson(Map<String, dynamic> json) {
  return _AuthDto.fromJson(json);
}

/// @nodoc
mixin _$AuthDto {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  int get otp => throw _privateConstructorUsedError;
  String get salt => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get profile => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthDtoCopyWith<AuthDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDtoCopyWith<$Res> {
  factory $AuthDtoCopyWith(AuthDto value, $Res Function(AuthDto) then) =
      _$AuthDtoCopyWithImpl<$Res, AuthDto>;
  @useResult
  $Res call(
      {int id,
      String email,
      String phone,
      String password,
      int otp,
      String salt,
      String firstname,
      String lastname,
      String profile,
      bool verified});
}

/// @nodoc
class _$AuthDtoCopyWithImpl<$Res, $Val extends AuthDto>
    implements $AuthDtoCopyWith<$Res> {
  _$AuthDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? phone = null,
    Object? password = null,
    Object? otp = null,
    Object? salt = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? profile = null,
    Object? verified = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int,
      salt: null == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthDtoImplCopyWith<$Res> implements $AuthDtoCopyWith<$Res> {
  factory _$$AuthDtoImplCopyWith(
          _$AuthDtoImpl value, $Res Function(_$AuthDtoImpl) then) =
      __$$AuthDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String email,
      String phone,
      String password,
      int otp,
      String salt,
      String firstname,
      String lastname,
      String profile,
      bool verified});
}

/// @nodoc
class __$$AuthDtoImplCopyWithImpl<$Res>
    extends _$AuthDtoCopyWithImpl<$Res, _$AuthDtoImpl>
    implements _$$AuthDtoImplCopyWith<$Res> {
  __$$AuthDtoImplCopyWithImpl(
      _$AuthDtoImpl _value, $Res Function(_$AuthDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? phone = null,
    Object? password = null,
    Object? otp = null,
    Object? salt = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? profile = null,
    Object? verified = null,
  }) {
    return _then(_$AuthDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int,
      salt: null == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthDtoImpl extends _AuthDto {
  const _$AuthDtoImpl(
      {required this.id,
      required this.email,
      required this.phone,
      required this.password,
      required this.otp,
      required this.salt,
      required this.firstname,
      required this.lastname,
      required this.profile,
      required this.verified})
      : super._();

  factory _$AuthDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String password;
  @override
  final int otp;
  @override
  final String salt;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String profile;
  @override
  final bool verified;

  @override
  String toString() {
    return 'AuthDto(id: $id, email: $email, phone: $phone, password: $password, otp: $otp, salt: $salt, firstname: $firstname, lastname: $lastname, profile: $profile, verified: $verified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.salt, salt) || other.salt == salt) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.verified, verified) ||
                other.verified == verified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, phone, password, otp,
      salt, firstname, lastname, profile, verified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthDtoImplCopyWith<_$AuthDtoImpl> get copyWith =>
      __$$AuthDtoImplCopyWithImpl<_$AuthDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthDtoImplToJson(
      this,
    );
  }
}

abstract class _AuthDto extends AuthDto {
  const factory _AuthDto(
      {required final int id,
      required final String email,
      required final String phone,
      required final String password,
      required final int otp,
      required final String salt,
      required final String firstname,
      required final String lastname,
      required final String profile,
      required final bool verified}) = _$AuthDtoImpl;
  const _AuthDto._() : super._();

  factory _AuthDto.fromJson(Map<String, dynamic> json) = _$AuthDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get password;
  @override
  int get otp;
  @override
  String get salt;
  @override
  String get firstname;
  @override
  String get lastname;
  @override
  String get profile;
  @override
  bool get verified;
  @override
  @JsonKey(ignore: true)
  _$$AuthDtoImplCopyWith<_$AuthDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
