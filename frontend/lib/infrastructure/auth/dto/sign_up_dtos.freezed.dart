// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpDto {
  EmailAddress get email => throw _privateConstructorUsedError;
  PhoneNumber get phone => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpDtoCopyWith<SignUpDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpDtoCopyWith<$Res> {
  factory $SignUpDtoCopyWith(SignUpDto value, $Res Function(SignUpDto) then) =
      _$SignUpDtoCopyWithImpl<$Res, SignUpDto>;
  @useResult
  $Res call({EmailAddress email, PhoneNumber phone, Password password});
}

/// @nodoc
class _$SignUpDtoCopyWithImpl<$Res, $Val extends SignUpDto>
    implements $SignUpDtoCopyWith<$Res> {
  _$SignUpDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpDtoImplCopyWith<$Res>
    implements $SignUpDtoCopyWith<$Res> {
  factory _$$SignUpDtoImplCopyWith(
          _$SignUpDtoImpl value, $Res Function(_$SignUpDtoImpl) then) =
      __$$SignUpDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmailAddress email, PhoneNumber phone, Password password});
}

/// @nodoc
class __$$SignUpDtoImplCopyWithImpl<$Res>
    extends _$SignUpDtoCopyWithImpl<$Res, _$SignUpDtoImpl>
    implements _$$SignUpDtoImplCopyWith<$Res> {
  __$$SignUpDtoImplCopyWithImpl(
      _$SignUpDtoImpl _value, $Res Function(_$SignUpDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_$SignUpDtoImpl(
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
    ));
  }
}

/// @nodoc

class _$SignUpDtoImpl implements _SignUpDto {
  const _$SignUpDtoImpl(
      {required this.email, required this.phone, required this.password});

  @override
  final EmailAddress email;
  @override
  final PhoneNumber phone;
  @override
  final Password password;

  @override
  String toString() {
    return 'SignUpDto(email: $email, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpDtoImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, phone, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpDtoImplCopyWith<_$SignUpDtoImpl> get copyWith =>
      __$$SignUpDtoImplCopyWithImpl<_$SignUpDtoImpl>(this, _$identity);
}

abstract class _SignUpDto implements SignUpDto {
  const factory _SignUpDto(
      {required final EmailAddress email,
      required final PhoneNumber phone,
      required final Password password}) = _$SignUpDtoImpl;

  @override
  EmailAddress get email;
  @override
  PhoneNumber get phone;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$SignUpDtoImplCopyWith<_$SignUpDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
