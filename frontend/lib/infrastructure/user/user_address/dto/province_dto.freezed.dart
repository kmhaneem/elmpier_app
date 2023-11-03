// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'province_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProvinceDto _$ProvinceDtoFromJson(Map<String, dynamic> json) {
  return _ProvinceDto.fromJson(json);
}

/// @nodoc
mixin _$ProvinceDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceDtoCopyWith<ProvinceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceDtoCopyWith<$Res> {
  factory $ProvinceDtoCopyWith(
          ProvinceDto value, $Res Function(ProvinceDto) then) =
      _$ProvinceDtoCopyWithImpl<$Res, ProvinceDto>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$ProvinceDtoCopyWithImpl<$Res, $Val extends ProvinceDto>
    implements $ProvinceDtoCopyWith<$Res> {
  _$ProvinceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProvinceDtoCopyWith<$Res>
    implements $ProvinceDtoCopyWith<$Res> {
  factory _$$_ProvinceDtoCopyWith(
          _$_ProvinceDto value, $Res Function(_$_ProvinceDto) then) =
      __$$_ProvinceDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_ProvinceDtoCopyWithImpl<$Res>
    extends _$ProvinceDtoCopyWithImpl<$Res, _$_ProvinceDto>
    implements _$$_ProvinceDtoCopyWith<$Res> {
  __$$_ProvinceDtoCopyWithImpl(
      _$_ProvinceDto _value, $Res Function(_$_ProvinceDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_ProvinceDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProvinceDto extends _ProvinceDto {
  const _$_ProvinceDto({required this.id, required this.name}) : super._();

  factory _$_ProvinceDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProvinceDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'ProvinceDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProvinceDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProvinceDtoCopyWith<_$_ProvinceDto> get copyWith =>
      __$$_ProvinceDtoCopyWithImpl<_$_ProvinceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProvinceDtoToJson(
      this,
    );
  }
}

abstract class _ProvinceDto extends ProvinceDto {
  const factory _ProvinceDto(
      {required final int id, required final String name}) = _$_ProvinceDto;
  const _ProvinceDto._() : super._();

  factory _ProvinceDto.fromJson(Map<String, dynamic> json) =
      _$_ProvinceDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ProvinceDtoCopyWith<_$_ProvinceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
