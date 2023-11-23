// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Auth {
  int get id => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  PhoneNumber get phone => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  OtpNumber get otp => throw _privateConstructorUsedError;
  String get salt => throw _privateConstructorUsedError;
  FirstName get firstname => throw _privateConstructorUsedError;
  LastName get lastname => throw _privateConstructorUsedError;
  String get profile => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthCopyWith<Auth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCopyWith<$Res> {
  factory $AuthCopyWith(Auth value, $Res Function(Auth) then) =
      _$AuthCopyWithImpl<$Res, Auth>;
  @useResult
  $Res call(
      {int id,
      EmailAddress email,
      PhoneNumber phone,
      Password password,
      OtpNumber otp,
      String salt,
      FirstName firstname,
      LastName lastname,
      String profile,
      bool verified});
}

/// @nodoc
class _$AuthCopyWithImpl<$Res, $Val extends Auth>
    implements $AuthCopyWith<$Res> {
  _$AuthCopyWithImpl(this._value, this._then);

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
              as EmailAddress,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OtpNumber,
      salt: null == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as LastName,
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
abstract class _$$AuthImplCopyWith<$Res> implements $AuthCopyWith<$Res> {
  factory _$$AuthImplCopyWith(
          _$AuthImpl value, $Res Function(_$AuthImpl) then) =
      __$$AuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      EmailAddress email,
      PhoneNumber phone,
      Password password,
      OtpNumber otp,
      String salt,
      FirstName firstname,
      LastName lastname,
      String profile,
      bool verified});
}

/// @nodoc
class __$$AuthImplCopyWithImpl<$Res>
    extends _$AuthCopyWithImpl<$Res, _$AuthImpl>
    implements _$$AuthImplCopyWith<$Res> {
  __$$AuthImplCopyWithImpl(_$AuthImpl _value, $Res Function(_$AuthImpl) _then)
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
    return _then(_$AuthImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OtpNumber,
      salt: null == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as LastName,
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

class _$AuthImpl extends _Auth {
  const _$AuthImpl(
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

  @override
  final int id;
  @override
  final EmailAddress email;
  @override
  final PhoneNumber phone;
  @override
  final Password password;
  @override
  final OtpNumber otp;
  @override
  final String salt;
  @override
  final FirstName firstname;
  @override
  final LastName lastname;
  @override
  final String profile;
  @override
  final bool verified;

  @override
  String toString() {
    return 'Auth(id: $id, email: $email, phone: $phone, password: $password, otp: $otp, salt: $salt, firstname: $firstname, lastname: $lastname, profile: $profile, verified: $verified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, email, phone, password, otp,
      salt, firstname, lastname, profile, verified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthImplCopyWith<_$AuthImpl> get copyWith =>
      __$$AuthImplCopyWithImpl<_$AuthImpl>(this, _$identity);
}

abstract class _Auth extends Auth {
  const factory _Auth(
      {required final int id,
      required final EmailAddress email,
      required final PhoneNumber phone,
      required final Password password,
      required final OtpNumber otp,
      required final String salt,
      required final FirstName firstname,
      required final LastName lastname,
      required final String profile,
      required final bool verified}) = _$AuthImpl;
  const _Auth._() : super._();

  @override
  int get id;
  @override
  EmailAddress get email;
  @override
  PhoneNumber get phone;
  @override
  Password get password;
  @override
  OtpNumber get otp;
  @override
  String get salt;
  @override
  FirstName get firstname;
  @override
  LastName get lastname;
  @override
  String get profile;
  @override
  bool get verified;
  @override
  @JsonKey(ignore: true)
  _$$AuthImplCopyWith<_$AuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
