// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModelDto _$ProductModelDtoFromJson(Map<String, dynamic> json) {
  return _ProductModelDto.fromJson(json);
}

/// @nodoc
mixin _$ProductModelDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_id')
  int get brandId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelDtoCopyWith<ProductModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelDtoCopyWith<$Res> {
  factory $ProductModelDtoCopyWith(
          ProductModelDto value, $Res Function(ProductModelDto) then) =
      _$ProductModelDtoCopyWithImpl<$Res, ProductModelDto>;
  @useResult
  $Res call({int id, String name, @JsonKey(name: 'brand_id') int brandId});
}

/// @nodoc
class _$ProductModelDtoCopyWithImpl<$Res, $Val extends ProductModelDto>
    implements $ProductModelDtoCopyWith<$Res> {
  _$ProductModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? brandId = null,
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
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductModelDtoCopyWith<$Res>
    implements $ProductModelDtoCopyWith<$Res> {
  factory _$$_ProductModelDtoCopyWith(
          _$_ProductModelDto value, $Res Function(_$_ProductModelDto) then) =
      __$$_ProductModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, @JsonKey(name: 'brand_id') int brandId});
}

/// @nodoc
class __$$_ProductModelDtoCopyWithImpl<$Res>
    extends _$ProductModelDtoCopyWithImpl<$Res, _$_ProductModelDto>
    implements _$$_ProductModelDtoCopyWith<$Res> {
  __$$_ProductModelDtoCopyWithImpl(
      _$_ProductModelDto _value, $Res Function(_$_ProductModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? brandId = null,
  }) {
    return _then(_$_ProductModelDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModelDto implements _ProductModelDto {
  const _$_ProductModelDto(
      {required this.id,
      required this.name,
      @JsonKey(name: 'brand_id') required this.brandId});

  factory _$_ProductModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'brand_id')
  final int brandId;

  @override
  String toString() {
    return 'ProductModelDto(id: $id, name: $name, brandId: $brandId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModelDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.brandId, brandId) || other.brandId == brandId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, brandId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelDtoCopyWith<_$_ProductModelDto> get copyWith =>
      __$$_ProductModelDtoCopyWithImpl<_$_ProductModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelDtoToJson(
      this,
    );
  }
}

abstract class _ProductModelDto implements ProductModelDto {
  const factory _ProductModelDto(
          {required final int id,
          required final String name,
          @JsonKey(name: 'brand_id') required final int brandId}) =
      _$_ProductModelDto;

  factory _ProductModelDto.fromJson(Map<String, dynamic> json) =
      _$_ProductModelDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'brand_id')
  int get brandId;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelDtoCopyWith<_$_ProductModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
