// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderStatus {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  bool get isPickup => throw _privateConstructorUsedError;
  bool get isWarehouse => throw _privateConstructorUsedError;
  bool get isDelivered => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStatusCopyWith<OrderStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusCopyWith<$Res> {
  factory $OrderStatusCopyWith(
          OrderStatus value, $Res Function(OrderStatus) then) =
      _$OrderStatusCopyWithImpl<$Res, OrderStatus>;
  @useResult
  $Res call(
      {int id,
      String name,
      String imageUrl,
      bool isPickup,
      bool isWarehouse,
      bool isDelivered});
}

/// @nodoc
class _$OrderStatusCopyWithImpl<$Res, $Val extends OrderStatus>
    implements $OrderStatusCopyWith<$Res> {
  _$OrderStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? isPickup = null,
    Object? isWarehouse = null,
    Object? isDelivered = null,
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
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isPickup: null == isPickup
          ? _value.isPickup
          : isPickup // ignore: cast_nullable_to_non_nullable
              as bool,
      isWarehouse: null == isWarehouse
          ? _value.isWarehouse
          : isWarehouse // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelivered: null == isDelivered
          ? _value.isDelivered
          : isDelivered // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderStatusImplCopyWith<$Res>
    implements $OrderStatusCopyWith<$Res> {
  factory _$$OrderStatusImplCopyWith(
          _$OrderStatusImpl value, $Res Function(_$OrderStatusImpl) then) =
      __$$OrderStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String imageUrl,
      bool isPickup,
      bool isWarehouse,
      bool isDelivered});
}

/// @nodoc
class __$$OrderStatusImplCopyWithImpl<$Res>
    extends _$OrderStatusCopyWithImpl<$Res, _$OrderStatusImpl>
    implements _$$OrderStatusImplCopyWith<$Res> {
  __$$OrderStatusImplCopyWithImpl(
      _$OrderStatusImpl _value, $Res Function(_$OrderStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? isPickup = null,
    Object? isWarehouse = null,
    Object? isDelivered = null,
  }) {
    return _then(_$OrderStatusImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isPickup: null == isPickup
          ? _value.isPickup
          : isPickup // ignore: cast_nullable_to_non_nullable
              as bool,
      isWarehouse: null == isWarehouse
          ? _value.isWarehouse
          : isWarehouse // ignore: cast_nullable_to_non_nullable
              as bool,
      isDelivered: null == isDelivered
          ? _value.isDelivered
          : isDelivered // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OrderStatusImpl implements _OrderStatus {
  const _$OrderStatusImpl(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.isPickup,
      required this.isWarehouse,
      required this.isDelivered});

  @override
  final int id;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final bool isPickup;
  @override
  final bool isWarehouse;
  @override
  final bool isDelivered;

  @override
  String toString() {
    return 'OrderStatus(id: $id, name: $name, imageUrl: $imageUrl, isPickup: $isPickup, isWarehouse: $isWarehouse, isDelivered: $isDelivered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isPickup, isPickup) ||
                other.isPickup == isPickup) &&
            (identical(other.isWarehouse, isWarehouse) ||
                other.isWarehouse == isWarehouse) &&
            (identical(other.isDelivered, isDelivered) ||
                other.isDelivered == isDelivered));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, imageUrl, isPickup, isWarehouse, isDelivered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStatusImplCopyWith<_$OrderStatusImpl> get copyWith =>
      __$$OrderStatusImplCopyWithImpl<_$OrderStatusImpl>(this, _$identity);
}

abstract class _OrderStatus implements OrderStatus {
  const factory _OrderStatus(
      {required final int id,
      required final String name,
      required final String imageUrl,
      required final bool isPickup,
      required final bool isWarehouse,
      required final bool isDelivered}) = _$OrderStatusImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  bool get isPickup;
  @override
  bool get isWarehouse;
  @override
  bool get isDelivered;
  @override
  @JsonKey(ignore: true)
  _$$OrderStatusImplCopyWith<_$OrderStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
