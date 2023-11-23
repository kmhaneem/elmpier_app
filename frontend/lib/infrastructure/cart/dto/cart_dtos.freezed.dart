// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartDto _$CartDtoFromJson(Map<String, dynamic> json) {
  return _CartDto.fromJson(json);
}

/// @nodoc
mixin _$CartDto {
  @JsonKey(name: "product_id")
  int get productId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "item_qty")
  int get itemQty => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartDtoCopyWith<CartDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartDtoCopyWith<$Res> {
  factory $CartDtoCopyWith(CartDto value, $Res Function(CartDto) then) =
      _$CartDtoCopyWithImpl<$Res, CartDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "product_id") int productId,
      String name,
      int price,
      @JsonKey(name: "item_qty") int itemQty,
      @JsonKey(name: "image_url") String imageUrl});
}

/// @nodoc
class _$CartDtoCopyWithImpl<$Res, $Val extends CartDto>
    implements $CartDtoCopyWith<$Res> {
  _$CartDtoCopyWithImpl(this._value, this._then);

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
    Object? itemQty = null,
    Object? imageUrl = null,
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
      itemQty: null == itemQty
          ? _value.itemQty
          : itemQty // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartDtoImplCopyWith<$Res> implements $CartDtoCopyWith<$Res> {
  factory _$$CartDtoImplCopyWith(
          _$CartDtoImpl value, $Res Function(_$CartDtoImpl) then) =
      __$$CartDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "product_id") int productId,
      String name,
      int price,
      @JsonKey(name: "item_qty") int itemQty,
      @JsonKey(name: "image_url") String imageUrl});
}

/// @nodoc
class __$$CartDtoImplCopyWithImpl<$Res>
    extends _$CartDtoCopyWithImpl<$Res, _$CartDtoImpl>
    implements _$$CartDtoImplCopyWith<$Res> {
  __$$CartDtoImplCopyWithImpl(
      _$CartDtoImpl _value, $Res Function(_$CartDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? name = null,
    Object? price = null,
    Object? itemQty = null,
    Object? imageUrl = null,
  }) {
    return _then(_$CartDtoImpl(
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
      itemQty: null == itemQty
          ? _value.itemQty
          : itemQty // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartDtoImpl extends _CartDto {
  const _$CartDtoImpl(
      {@JsonKey(name: "product_id") required this.productId,
      required this.name,
      required this.price,
      @JsonKey(name: "item_qty") required this.itemQty,
      @JsonKey(name: "image_url") required this.imageUrl})
      : super._();

  factory _$CartDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartDtoImplFromJson(json);

  @override
  @JsonKey(name: "product_id")
  final int productId;
  @override
  final String name;
  @override
  final int price;
  @override
  @JsonKey(name: "item_qty")
  final int itemQty;
  @override
  @JsonKey(name: "image_url")
  final String imageUrl;

  @override
  String toString() {
    return 'CartDto(productId: $productId, name: $name, price: $price, itemQty: $itemQty, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartDtoImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.itemQty, itemQty) || other.itemQty == itemQty) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, name, price, itemQty, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartDtoImplCopyWith<_$CartDtoImpl> get copyWith =>
      __$$CartDtoImplCopyWithImpl<_$CartDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartDtoImplToJson(
      this,
    );
  }
}

abstract class _CartDto extends CartDto {
  const factory _CartDto(
          {@JsonKey(name: "product_id") required final int productId,
          required final String name,
          required final int price,
          @JsonKey(name: "item_qty") required final int itemQty,
          @JsonKey(name: "image_url") required final String imageUrl}) =
      _$CartDtoImpl;
  const _CartDto._() : super._();

  factory _CartDto.fromJson(Map<String, dynamic> json) = _$CartDtoImpl.fromJson;

  @override
  @JsonKey(name: "product_id")
  int get productId;
  @override
  String get name;
  @override
  int get price;
  @override
  @JsonKey(name: "item_qty")
  int get itemQty;
  @override
  @JsonKey(name: "image_url")
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$CartDtoImplCopyWith<_$CartDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
