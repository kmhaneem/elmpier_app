// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sold_product_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SoldProductDto _$SoldProductDtoFromJson(Map<String, dynamic> json) {
  return _SoldProductDto.fromJson(json);
}

/// @nodoc
mixin _$SoldProductDto {
  @JsonKey(name: "product_id")
  int get productId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "total_qty")
  int get totalQty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SoldProductDtoCopyWith<SoldProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoldProductDtoCopyWith<$Res> {
  factory $SoldProductDtoCopyWith(
          SoldProductDto value, $Res Function(SoldProductDto) then) =
      _$SoldProductDtoCopyWithImpl<$Res, SoldProductDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "product_id") int productId,
      String name,
      int price,
      @JsonKey(name: "image_url") String imageUrl,
      @JsonKey(name: "total_qty") int totalQty});
}

/// @nodoc
class _$SoldProductDtoCopyWithImpl<$Res, $Val extends SoldProductDto>
    implements $SoldProductDtoCopyWith<$Res> {
  _$SoldProductDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? name = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? totalQty = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      totalQty: null == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoldProductDtoImplCopyWith<$Res>
    implements $SoldProductDtoCopyWith<$Res> {
  factory _$$SoldProductDtoImplCopyWith(_$SoldProductDtoImpl value,
          $Res Function(_$SoldProductDtoImpl) then) =
      __$$SoldProductDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "product_id") int productId,
      String name,
      int price,
      @JsonKey(name: "image_url") String imageUrl,
      @JsonKey(name: "total_qty") int totalQty});
}

/// @nodoc
class __$$SoldProductDtoImplCopyWithImpl<$Res>
    extends _$SoldProductDtoCopyWithImpl<$Res, _$SoldProductDtoImpl>
    implements _$$SoldProductDtoImplCopyWith<$Res> {
  __$$SoldProductDtoImplCopyWithImpl(
      _$SoldProductDtoImpl _value, $Res Function(_$SoldProductDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? name = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? totalQty = null,
  }) {
    return _then(_$SoldProductDtoImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      totalQty: null == totalQty
          ? _value.totalQty
          : totalQty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoldProductDtoImpl extends _SoldProductDto {
  const _$SoldProductDtoImpl(
      {@JsonKey(name: "product_id") required this.productId,
      required this.name,
      required this.price,
      @JsonKey(name: "image_url") required this.imageUrl,
      @JsonKey(name: "total_qty") required this.totalQty})
      : super._();

  factory _$SoldProductDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoldProductDtoImplFromJson(json);

  @override
  @JsonKey(name: "product_id")
  final int productId;
  @override
  final String name;
  @override
  final int price;
  @override
  @JsonKey(name: "image_url")
  final String imageUrl;
  @override
  @JsonKey(name: "total_qty")
  final int totalQty;

  @override
  String toString() {
    return 'SoldProductDto(productId: $productId, name: $name, price: $price, imageUrl: $imageUrl, totalQty: $totalQty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoldProductDtoImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, name, price, imageUrl, totalQty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SoldProductDtoImplCopyWith<_$SoldProductDtoImpl> get copyWith =>
      __$$SoldProductDtoImplCopyWithImpl<_$SoldProductDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoldProductDtoImplToJson(
      this,
    );
  }
}

abstract class _SoldProductDto extends SoldProductDto {
  const factory _SoldProductDto(
          {@JsonKey(name: "product_id") required final int productId,
          required final String name,
          required final int price,
          @JsonKey(name: "image_url") required final String imageUrl,
          @JsonKey(name: "total_qty") required final int totalQty}) =
      _$SoldProductDtoImpl;
  const _SoldProductDto._() : super._();

  factory _SoldProductDto.fromJson(Map<String, dynamic> json) =
      _$SoldProductDtoImpl.fromJson;

  @override
  @JsonKey(name: "product_id")
  int get productId;
  @override
  String get name;
  @override
  int get price;
  @override
  @JsonKey(name: "image_url")
  String get imageUrl;
  @override
  @JsonKey(name: "total_qty")
  int get totalQty;
  @override
  @JsonKey(ignore: true)
  _$$SoldProductDtoImplCopyWith<_$SoldProductDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
