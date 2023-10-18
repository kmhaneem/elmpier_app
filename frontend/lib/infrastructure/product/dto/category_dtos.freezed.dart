// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductCategoryDto _$ProductCategoryDtoFromJson(Map<String, dynamic> json) {
  return _ProductCategoryDto.fromJson(json);
}

/// @nodoc
mixin _$ProductCategoryDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCategoryDtoCopyWith<ProductCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryDtoCopyWith<$Res> {
  factory $ProductCategoryDtoCopyWith(
          ProductCategoryDto value, $Res Function(ProductCategoryDto) then) =
      _$ProductCategoryDtoCopyWithImpl<$Res, ProductCategoryDto>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$ProductCategoryDtoCopyWithImpl<$Res, $Val extends ProductCategoryDto>
    implements $ProductCategoryDtoCopyWith<$Res> {
  _$ProductCategoryDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProductCategoryDtoCopyWith<$Res>
    implements $ProductCategoryDtoCopyWith<$Res> {
  factory _$$_ProductCategoryDtoCopyWith(_$_ProductCategoryDto value,
          $Res Function(_$_ProductCategoryDto) then) =
      __$$_ProductCategoryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_ProductCategoryDtoCopyWithImpl<$Res>
    extends _$ProductCategoryDtoCopyWithImpl<$Res, _$_ProductCategoryDto>
    implements _$$_ProductCategoryDtoCopyWith<$Res> {
  __$$_ProductCategoryDtoCopyWithImpl(
      _$_ProductCategoryDto _value, $Res Function(_$_ProductCategoryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_ProductCategoryDto(
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
class _$_ProductCategoryDto implements _ProductCategoryDto {
  const _$_ProductCategoryDto({required this.id, required this.name});

  factory _$_ProductCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCategoryDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'ProductCategoryDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductCategoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCategoryDtoCopyWith<_$_ProductCategoryDto> get copyWith =>
      __$$_ProductCategoryDtoCopyWithImpl<_$_ProductCategoryDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCategoryDtoToJson(
      this,
    );
  }
}

abstract class _ProductCategoryDto implements ProductCategoryDto {
  const factory _ProductCategoryDto(
      {required final int id,
      required final String name}) = _$_ProductCategoryDto;

  factory _ProductCategoryDto.fromJson(Map<String, dynamic> json) =
      _$_ProductCategoryDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCategoryDtoCopyWith<_$_ProductCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
