// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OtpDto {
  OtpNumber get otp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpDtoCopyWith<OtpDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpDtoCopyWith<$Res> {
  factory $OtpDtoCopyWith(OtpDto value, $Res Function(OtpDto) then) =
      _$OtpDtoCopyWithImpl<$Res, OtpDto>;
  @useResult
  $Res call({OtpNumber otp});
}

/// @nodoc
class _$OtpDtoCopyWithImpl<$Res, $Val extends OtpDto>
    implements $OtpDtoCopyWith<$Res> {
  _$OtpDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OtpNumber,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpDtoImplCopyWith<$Res> implements $OtpDtoCopyWith<$Res> {
  factory _$$OtpDtoImplCopyWith(
          _$OtpDtoImpl value, $Res Function(_$OtpDtoImpl) then) =
      __$$OtpDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OtpNumber otp});
}

/// @nodoc
class __$$OtpDtoImplCopyWithImpl<$Res>
    extends _$OtpDtoCopyWithImpl<$Res, _$OtpDtoImpl>
    implements _$$OtpDtoImplCopyWith<$Res> {
  __$$OtpDtoImplCopyWithImpl(
      _$OtpDtoImpl _value, $Res Function(_$OtpDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$OtpDtoImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OtpNumber,
    ));
  }
}

/// @nodoc

class _$OtpDtoImpl implements _OtpDto {
  const _$OtpDtoImpl({required this.otp});

  @override
  final OtpNumber otp;

  @override
  String toString() {
    return 'OtpDto(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpDtoImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpDtoImplCopyWith<_$OtpDtoImpl> get copyWith =>
      __$$OtpDtoImplCopyWithImpl<_$OtpDtoImpl>(this, _$identity);
}

abstract class _OtpDto implements OtpDto {
  const factory _OtpDto({required final OtpNumber otp}) = _$OtpDtoImpl;

  @override
  OtpNumber get otp;
  @override
  @JsonKey(ignore: true)
  _$$OtpDtoImplCopyWith<_$OtpDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
