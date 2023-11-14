// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletDto _$WalletDtoFromJson(Map<String, dynamic> json) {
  return _WalletDto.fromJson(json);
}

/// @nodoc
mixin _$WalletDto {
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletDtoCopyWith<WalletDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDtoCopyWith<$Res> {
  factory $WalletDtoCopyWith(WalletDto value, $Res Function(WalletDto) then) =
      _$WalletDtoCopyWithImpl<$Res, WalletDto>;
  @useResult
  $Res call({int amount});
}

/// @nodoc
class _$WalletDtoCopyWithImpl<$Res, $Val extends WalletDto>
    implements $WalletDtoCopyWith<$Res> {
  _$WalletDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WalletDtoCopyWith<$Res> implements $WalletDtoCopyWith<$Res> {
  factory _$$_WalletDtoCopyWith(
          _$_WalletDto value, $Res Function(_$_WalletDto) then) =
      __$$_WalletDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amount});
}

/// @nodoc
class __$$_WalletDtoCopyWithImpl<$Res>
    extends _$WalletDtoCopyWithImpl<$Res, _$_WalletDto>
    implements _$$_WalletDtoCopyWith<$Res> {
  __$$_WalletDtoCopyWithImpl(
      _$_WalletDto _value, $Res Function(_$_WalletDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$_WalletDto(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletDto extends _WalletDto {
  const _$_WalletDto({required this.amount}) : super._();

  factory _$_WalletDto.fromJson(Map<String, dynamic> json) =>
      _$$_WalletDtoFromJson(json);

  @override
  final int amount;

  @override
  String toString() {
    return 'WalletDto(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletDto &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletDtoCopyWith<_$_WalletDto> get copyWith =>
      __$$_WalletDtoCopyWithImpl<_$_WalletDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletDtoToJson(
      this,
    );
  }
}

abstract class _WalletDto extends WalletDto {
  const factory _WalletDto({required final int amount}) = _$_WalletDto;
  const _WalletDto._() : super._();

  factory _WalletDto.fromJson(Map<String, dynamic> json) =
      _$_WalletDto.fromJson;

  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$_WalletDtoCopyWith<_$_WalletDto> get copyWith =>
      throw _privateConstructorUsedError;
}
