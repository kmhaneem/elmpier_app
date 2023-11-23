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
  String get statusName => throw _privateConstructorUsedError;

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
  $Res call({int id, String statusName});
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
    Object? statusName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      statusName: null == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({int id, String statusName});
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
    Object? statusName = null,
  }) {
    return _then(_$OrderStatusImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      statusName: null == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderStatusImpl implements _OrderStatus {
  const _$OrderStatusImpl({required this.id, required this.statusName});

  @override
  final int id;
  @override
  final String statusName;

  @override
  String toString() {
    return 'OrderStatus(id: $id, statusName: $statusName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.statusName, statusName) ||
                other.statusName == statusName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, statusName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStatusImplCopyWith<_$OrderStatusImpl> get copyWith =>
      __$$OrderStatusImplCopyWithImpl<_$OrderStatusImpl>(this, _$identity);
}

abstract class _OrderStatus implements OrderStatus {
  const factory _OrderStatus(
      {required final int id,
      required final String statusName}) = _$OrderStatusImpl;

  @override
  int get id;
  @override
  String get statusName;
  @override
  @JsonKey(ignore: true)
  _$$OrderStatusImplCopyWith<_$OrderStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
