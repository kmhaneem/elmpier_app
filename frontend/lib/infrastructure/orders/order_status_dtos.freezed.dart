// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderStatusDto _$OrderStatusDtoFromJson(Map<String, dynamic> json) {
  return _OrderStatusDto.fromJson(json);
}

/// @nodoc
mixin _$OrderStatusDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "is_pickup")
  bool get isPickup => throw _privateConstructorUsedError;
  @JsonKey(name: "is_warehouse")
  bool get isWarehouse => throw _privateConstructorUsedError;
  @JsonKey(name: "is_delivered")
  bool get isDelivered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderStatusDtoCopyWith<OrderStatusDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusDtoCopyWith<$Res> {
  factory $OrderStatusDtoCopyWith(
          OrderStatusDto value, $Res Function(OrderStatusDto) then) =
      _$OrderStatusDtoCopyWithImpl<$Res, OrderStatusDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "image_url") String imageUrl,
      @JsonKey(name: "is_pickup") bool isPickup,
      @JsonKey(name: "is_warehouse") bool isWarehouse,
      @JsonKey(name: "is_delivered") bool isDelivered});
}

/// @nodoc
class _$OrderStatusDtoCopyWithImpl<$Res, $Val extends OrderStatusDto>
    implements $OrderStatusDtoCopyWith<$Res> {
  _$OrderStatusDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$OrderStatusDtoImplCopyWith<$Res>
    implements $OrderStatusDtoCopyWith<$Res> {
  factory _$$OrderStatusDtoImplCopyWith(_$OrderStatusDtoImpl value,
          $Res Function(_$OrderStatusDtoImpl) then) =
      __$$OrderStatusDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: "image_url") String imageUrl,
      @JsonKey(name: "is_pickup") bool isPickup,
      @JsonKey(name: "is_warehouse") bool isWarehouse,
      @JsonKey(name: "is_delivered") bool isDelivered});
}

/// @nodoc
class __$$OrderStatusDtoImplCopyWithImpl<$Res>
    extends _$OrderStatusDtoCopyWithImpl<$Res, _$OrderStatusDtoImpl>
    implements _$$OrderStatusDtoImplCopyWith<$Res> {
  __$$OrderStatusDtoImplCopyWithImpl(
      _$OrderStatusDtoImpl _value, $Res Function(_$OrderStatusDtoImpl) _then)
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
    return _then(_$OrderStatusDtoImpl(
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
@JsonSerializable()
class _$OrderStatusDtoImpl extends _OrderStatusDto {
  const _$OrderStatusDtoImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: "image_url") required this.imageUrl,
      @JsonKey(name: "is_pickup") required this.isPickup,
      @JsonKey(name: "is_warehouse") required this.isWarehouse,
      @JsonKey(name: "is_delivered") required this.isDelivered})
      : super._();

  factory _$OrderStatusDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderStatusDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: "image_url")
  final String imageUrl;
  @override
  @JsonKey(name: "is_pickup")
  final bool isPickup;
  @override
  @JsonKey(name: "is_warehouse")
  final bool isWarehouse;
  @override
  @JsonKey(name: "is_delivered")
  final bool isDelivered;

  @override
  String toString() {
    return 'OrderStatusDto(id: $id, name: $name, imageUrl: $imageUrl, isPickup: $isPickup, isWarehouse: $isWarehouse, isDelivered: $isDelivered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusDtoImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, imageUrl, isPickup, isWarehouse, isDelivered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStatusDtoImplCopyWith<_$OrderStatusDtoImpl> get copyWith =>
      __$$OrderStatusDtoImplCopyWithImpl<_$OrderStatusDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderStatusDtoImplToJson(
      this,
    );
  }
}

abstract class _OrderStatusDto extends OrderStatusDto {
  const factory _OrderStatusDto(
          {required final int id,
          required final String name,
          @JsonKey(name: "image_url") required final String imageUrl,
          @JsonKey(name: "is_pickup") required final bool isPickup,
          @JsonKey(name: "is_warehouse") required final bool isWarehouse,
          @JsonKey(name: "is_delivered") required final bool isDelivered}) =
      _$OrderStatusDtoImpl;
  const _OrderStatusDto._() : super._();

  factory _OrderStatusDto.fromJson(Map<String, dynamic> json) =
      _$OrderStatusDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: "image_url")
  String get imageUrl;
  @override
  @JsonKey(name: "is_pickup")
  bool get isPickup;
  @override
  @JsonKey(name: "is_warehouse")
  bool get isWarehouse;
  @override
  @JsonKey(name: "is_delivered")
  bool get isDelivered;
  @override
  @JsonKey(ignore: true)
  _$$OrderStatusDtoImplCopyWith<_$OrderStatusDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
