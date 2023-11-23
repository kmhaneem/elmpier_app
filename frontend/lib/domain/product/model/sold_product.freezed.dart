// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sold_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SoldProduct {
  int get productId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get totalQty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SoldProductCopyWith<SoldProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoldProductCopyWith<$Res> {
  factory $SoldProductCopyWith(
          SoldProduct value, $Res Function(SoldProduct) then) =
      _$SoldProductCopyWithImpl<$Res, SoldProduct>;
  @useResult
  $Res call(
      {int productId, String name, int price, String imageUrl, int totalQty});
}

/// @nodoc
class _$SoldProductCopyWithImpl<$Res, $Val extends SoldProduct>
    implements $SoldProductCopyWith<$Res> {
  _$SoldProductCopyWithImpl(this._value, this._then);

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
abstract class _$$SoldProductImplCopyWith<$Res>
    implements $SoldProductCopyWith<$Res> {
  factory _$$SoldProductImplCopyWith(
          _$SoldProductImpl value, $Res Function(_$SoldProductImpl) then) =
      __$$SoldProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int productId, String name, int price, String imageUrl, int totalQty});
}

/// @nodoc
class __$$SoldProductImplCopyWithImpl<$Res>
    extends _$SoldProductCopyWithImpl<$Res, _$SoldProductImpl>
    implements _$$SoldProductImplCopyWith<$Res> {
  __$$SoldProductImplCopyWithImpl(
      _$SoldProductImpl _value, $Res Function(_$SoldProductImpl) _then)
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
    return _then(_$SoldProductImpl(
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

class _$SoldProductImpl implements _SoldProduct {
  const _$SoldProductImpl(
      {required this.productId,
      required this.name,
      required this.price,
      required this.imageUrl,
      required this.totalQty});

  @override
  final int productId;
  @override
  final String name;
  @override
  final int price;
  @override
  final String imageUrl;
  @override
  final int totalQty;

  @override
  String toString() {
    return 'SoldProduct(productId: $productId, name: $name, price: $price, imageUrl: $imageUrl, totalQty: $totalQty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoldProductImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.totalQty, totalQty) ||
                other.totalQty == totalQty));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, name, price, imageUrl, totalQty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SoldProductImplCopyWith<_$SoldProductImpl> get copyWith =>
      __$$SoldProductImplCopyWithImpl<_$SoldProductImpl>(this, _$identity);
}

abstract class _SoldProduct implements SoldProduct {
  const factory _SoldProduct(
      {required final int productId,
      required final String name,
      required final int price,
      required final String imageUrl,
      required final int totalQty}) = _$SoldProductImpl;

  @override
  int get productId;
  @override
  String get name;
  @override
  int get price;
  @override
  String get imageUrl;
  @override
  int get totalQty;
  @override
  @JsonKey(ignore: true)
  _$$SoldProductImplCopyWith<_$SoldProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
