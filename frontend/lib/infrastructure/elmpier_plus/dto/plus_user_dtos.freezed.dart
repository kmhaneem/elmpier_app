// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plus_user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlusUserDto _$PlusUserDtoFromJson(Map<String, dynamic> json) {
  return _PlusUserDto.fromJson(json);
}

/// @nodoc
mixin _$PlusUserDto {
  @JsonKey(name: "is_plus_user")
  bool get isPlusUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlusUserDtoCopyWith<PlusUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlusUserDtoCopyWith<$Res> {
  factory $PlusUserDtoCopyWith(
          PlusUserDto value, $Res Function(PlusUserDto) then) =
      _$PlusUserDtoCopyWithImpl<$Res, PlusUserDto>;
  @useResult
  $Res call({@JsonKey(name: "is_plus_user") bool isPlusUser});
}

/// @nodoc
class _$PlusUserDtoCopyWithImpl<$Res, $Val extends PlusUserDto>
    implements $PlusUserDtoCopyWith<$Res> {
  _$PlusUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlusUser = null,
  }) {
    return _then(_value.copyWith(
      isPlusUser: null == isPlusUser
          ? _value.isPlusUser
          : isPlusUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlusUserDtoCopyWith<$Res>
    implements $PlusUserDtoCopyWith<$Res> {
  factory _$$_PlusUserDtoCopyWith(
          _$_PlusUserDto value, $Res Function(_$_PlusUserDto) then) =
      __$$_PlusUserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "is_plus_user") bool isPlusUser});
}

/// @nodoc
class __$$_PlusUserDtoCopyWithImpl<$Res>
    extends _$PlusUserDtoCopyWithImpl<$Res, _$_PlusUserDto>
    implements _$$_PlusUserDtoCopyWith<$Res> {
  __$$_PlusUserDtoCopyWithImpl(
      _$_PlusUserDto _value, $Res Function(_$_PlusUserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlusUser = null,
  }) {
    return _then(_$_PlusUserDto(
      isPlusUser: null == isPlusUser
          ? _value.isPlusUser
          : isPlusUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlusUserDto extends _PlusUserDto {
  const _$_PlusUserDto(
      {@JsonKey(name: "is_plus_user") required this.isPlusUser})
      : super._();

  factory _$_PlusUserDto.fromJson(Map<String, dynamic> json) =>
      _$$_PlusUserDtoFromJson(json);

  @override
  @JsonKey(name: "is_plus_user")
  final bool isPlusUser;

  @override
  String toString() {
    return 'PlusUserDto(isPlusUser: $isPlusUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlusUserDto &&
            (identical(other.isPlusUser, isPlusUser) ||
                other.isPlusUser == isPlusUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isPlusUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlusUserDtoCopyWith<_$_PlusUserDto> get copyWith =>
      __$$_PlusUserDtoCopyWithImpl<_$_PlusUserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlusUserDtoToJson(
      this,
    );
  }
}

abstract class _PlusUserDto extends PlusUserDto {
  const factory _PlusUserDto(
          {@JsonKey(name: "is_plus_user") required final bool isPlusUser}) =
      _$_PlusUserDto;
  const _PlusUserDto._() : super._();

  factory _PlusUserDto.fromJson(Map<String, dynamic> json) =
      _$_PlusUserDto.fromJson;

  @override
  @JsonKey(name: "is_plus_user")
  bool get isPlusUser;
  @override
  @JsonKey(ignore: true)
  _$$_PlusUserDtoCopyWith<_$_PlusUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
