// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductBrandDto _$ProductBrandDtoFromJson(Map<String, dynamic> json) {
  return _ProductBrandDto.fromJson(json);
}

/// @nodoc
mixin _$ProductBrandDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductBrandDtoCopyWith<ProductBrandDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductBrandDtoCopyWith<$Res> {
  factory $ProductBrandDtoCopyWith(
          ProductBrandDto value, $Res Function(ProductBrandDto) then) =
      _$ProductBrandDtoCopyWithImpl<$Res, ProductBrandDto>;
  @useResult
  $Res call(
      {int id, String name, @JsonKey(name: 'category_id') int categoryId});
}

/// @nodoc
class _$ProductBrandDtoCopyWithImpl<$Res, $Val extends ProductBrandDto>
    implements $ProductBrandDtoCopyWith<$Res> {
  _$ProductBrandDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoryId = null,
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
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductBrandDtoImplCopyWith<$Res>
    implements $ProductBrandDtoCopyWith<$Res> {
  factory _$$ProductBrandDtoImplCopyWith(_$ProductBrandDtoImpl value,
          $Res Function(_$ProductBrandDtoImpl) then) =
      __$$ProductBrandDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, @JsonKey(name: 'category_id') int categoryId});
}

/// @nodoc
class __$$ProductBrandDtoImplCopyWithImpl<$Res>
    extends _$ProductBrandDtoCopyWithImpl<$Res, _$ProductBrandDtoImpl>
    implements _$$ProductBrandDtoImplCopyWith<$Res> {
  __$$ProductBrandDtoImplCopyWithImpl(
      _$ProductBrandDtoImpl _value, $Res Function(_$ProductBrandDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoryId = null,
  }) {
    return _then(_$ProductBrandDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductBrandDtoImpl implements _ProductBrandDto {
  const _$ProductBrandDtoImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'category_id') required this.categoryId});

  factory _$ProductBrandDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductBrandDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'category_id')
  final int categoryId;

  @override
  String toString() {
    return 'ProductBrandDto(id: $id, name: $name, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductBrandDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductBrandDtoImplCopyWith<_$ProductBrandDtoImpl> get copyWith =>
      __$$ProductBrandDtoImplCopyWithImpl<_$ProductBrandDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductBrandDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductBrandDto implements ProductBrandDto {
  const factory _ProductBrandDto(
          {required final int id,
          required final String name,
          @JsonKey(name: 'category_id') required final int categoryId}) =
      _$ProductBrandDtoImpl;

  factory _ProductBrandDto.fromJson(Map<String, dynamic> json) =
      _$ProductBrandDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'category_id')
  int get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$ProductBrandDtoImplCopyWith<_$ProductBrandDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
