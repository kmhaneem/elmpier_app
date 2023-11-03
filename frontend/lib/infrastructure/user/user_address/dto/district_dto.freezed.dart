// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'district_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DistrictDto _$DistrictDtoFromJson(Map<String, dynamic> json) {
  return _DistrictDto.fromJson(json);
}

/// @nodoc
mixin _$DistrictDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "province_id")
  int get provinceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistrictDtoCopyWith<DistrictDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictDtoCopyWith<$Res> {
  factory $DistrictDtoCopyWith(
          DistrictDto value, $Res Function(DistrictDto) then) =
      _$DistrictDtoCopyWithImpl<$Res, DistrictDto>;
  @useResult
  $Res call(
      {int id, String name, @JsonKey(name: "province_id") int provinceId});
}

/// @nodoc
class _$DistrictDtoCopyWithImpl<$Res, $Val extends DistrictDto>
    implements $DistrictDtoCopyWith<$Res> {
  _$DistrictDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? provinceId = null,
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
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DistrictDtoCopyWith<$Res>
    implements $DistrictDtoCopyWith<$Res> {
  factory _$$_DistrictDtoCopyWith(
          _$_DistrictDto value, $Res Function(_$_DistrictDto) then) =
      __$$_DistrictDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, @JsonKey(name: "province_id") int provinceId});
}

/// @nodoc
class __$$_DistrictDtoCopyWithImpl<$Res>
    extends _$DistrictDtoCopyWithImpl<$Res, _$_DistrictDto>
    implements _$$_DistrictDtoCopyWith<$Res> {
  __$$_DistrictDtoCopyWithImpl(
      _$_DistrictDto _value, $Res Function(_$_DistrictDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? provinceId = null,
  }) {
    return _then(_$_DistrictDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      provinceId: null == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DistrictDto extends _DistrictDto {
  const _$_DistrictDto(
      {required this.id,
      required this.name,
      @JsonKey(name: "province_id") required this.provinceId})
      : super._();

  factory _$_DistrictDto.fromJson(Map<String, dynamic> json) =>
      _$$_DistrictDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: "province_id")
  final int provinceId;

  @override
  String toString() {
    return 'DistrictDto(id: $id, name: $name, provinceId: $provinceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DistrictDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, provinceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DistrictDtoCopyWith<_$_DistrictDto> get copyWith =>
      __$$_DistrictDtoCopyWithImpl<_$_DistrictDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DistrictDtoToJson(
      this,
    );
  }
}

abstract class _DistrictDto extends DistrictDto {
  const factory _DistrictDto(
          {required final int id,
          required final String name,
          @JsonKey(name: "province_id") required final int provinceId}) =
      _$_DistrictDto;
  const _DistrictDto._() : super._();

  factory _DistrictDto.fromJson(Map<String, dynamic> json) =
      _$_DistrictDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: "province_id")
  int get provinceId;
  @override
  @JsonKey(ignore: true)
  _$$_DistrictDtoCopyWith<_$_DistrictDto> get copyWith =>
      throw _privateConstructorUsedError;
}
