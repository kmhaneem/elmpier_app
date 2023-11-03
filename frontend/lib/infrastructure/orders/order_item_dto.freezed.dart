// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderItemDto _$OrderItemDtoFromJson(Map<String, dynamic> json) {
  return _OrderItemDto.fromJson(json);
}

/// @nodoc
mixin _$OrderItemDto {
  @JsonKey(name: "order_id")
  int get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  int get productId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "image_qty")
  int get itemQty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemDtoCopyWith<OrderItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemDtoCopyWith<$Res> {
  factory $OrderItemDtoCopyWith(
          OrderItemDto value, $Res Function(OrderItemDto) then) =
      _$OrderItemDtoCopyWithImpl<$Res, OrderItemDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") int orderId,
      @JsonKey(name: "product_id") int productId,
      String name,
      int price,
      @JsonKey(name: "image_url") String imageUrl,
      @JsonKey(name: "image_qty") int itemQty});
}

/// @nodoc
class _$OrderItemDtoCopyWithImpl<$Res, $Val extends OrderItemDto>
    implements $OrderItemDtoCopyWith<$Res> {
  _$OrderItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? productId = null,
    Object? name = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? itemQty = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
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
      itemQty: null == itemQty
          ? _value.itemQty
          : itemQty // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderItemDtoCopyWith<$Res>
    implements $OrderItemDtoCopyWith<$Res> {
  factory _$$_OrderItemDtoCopyWith(
          _$_OrderItemDto value, $Res Function(_$_OrderItemDto) then) =
      __$$_OrderItemDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") int orderId,
      @JsonKey(name: "product_id") int productId,
      String name,
      int price,
      @JsonKey(name: "image_url") String imageUrl,
      @JsonKey(name: "image_qty") int itemQty});
}

/// @nodoc
class __$$_OrderItemDtoCopyWithImpl<$Res>
    extends _$OrderItemDtoCopyWithImpl<$Res, _$_OrderItemDto>
    implements _$$_OrderItemDtoCopyWith<$Res> {
  __$$_OrderItemDtoCopyWithImpl(
      _$_OrderItemDto _value, $Res Function(_$_OrderItemDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? productId = null,
    Object? name = null,
    Object? price = null,
    Object? imageUrl = null,
    Object? itemQty = null,
  }) {
    return _then(_$_OrderItemDto(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
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
      itemQty: null == itemQty
          ? _value.itemQty
          : itemQty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderItemDto extends _OrderItemDto {
  const _$_OrderItemDto(
      {@JsonKey(name: "order_id") required this.orderId,
      @JsonKey(name: "product_id") required this.productId,
      required this.name,
      required this.price,
      @JsonKey(name: "image_url") required this.imageUrl,
      @JsonKey(name: "image_qty") required this.itemQty})
      : super._();

  factory _$_OrderItemDto.fromJson(Map<String, dynamic> json) =>
      _$$_OrderItemDtoFromJson(json);

  @override
  @JsonKey(name: "order_id")
  final int orderId;
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
  @JsonKey(name: "image_qty")
  final int itemQty;

  @override
  String toString() {
    return 'OrderItemDto(orderId: $orderId, productId: $productId, name: $name, price: $price, imageUrl: $imageUrl, itemQty: $itemQty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderItemDto &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.itemQty, itemQty) || other.itemQty == itemQty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, productId, name, price, imageUrl, itemQty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderItemDtoCopyWith<_$_OrderItemDto> get copyWith =>
      __$$_OrderItemDtoCopyWithImpl<_$_OrderItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderItemDtoToJson(
      this,
    );
  }
}

abstract class _OrderItemDto extends OrderItemDto {
  const factory _OrderItemDto(
          {@JsonKey(name: "order_id") required final int orderId,
          @JsonKey(name: "product_id") required final int productId,
          required final String name,
          required final int price,
          @JsonKey(name: "image_url") required final String imageUrl,
          @JsonKey(name: "image_qty") required final int itemQty}) =
      _$_OrderItemDto;
  const _OrderItemDto._() : super._();

  factory _OrderItemDto.fromJson(Map<String, dynamic> json) =
      _$_OrderItemDto.fromJson;

  @override
  @JsonKey(name: "order_id")
  int get orderId;
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
  @JsonKey(name: "image_qty")
  int get itemQty;
  @override
  @JsonKey(ignore: true)
  _$$_OrderItemDtoCopyWith<_$_OrderItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
