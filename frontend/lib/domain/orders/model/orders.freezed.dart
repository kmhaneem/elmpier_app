// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Orders {
  int get userId => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get paymentId => throw _privateConstructorUsedError;
  int get statusId => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersCopyWith<Orders> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersCopyWith<$Res> {
  factory $OrdersCopyWith(Orders value, $Res Function(Orders) then) =
      _$OrdersCopyWithImpl<$Res, Orders>;
  @useResult
  $Res call(
      {int userId,
      String paymentMethod,
      String status,
      String paymentId,
      int statusId,
      int amount});
}

/// @nodoc
class _$OrdersCopyWithImpl<$Res, $Val extends Orders>
    implements $OrdersCopyWith<$Res> {
  _$OrdersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? paymentMethod = null,
    Object? status = null,
    Object? paymentId = null,
    Object? statusId = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersImplCopyWith<$Res> implements $OrdersCopyWith<$Res> {
  factory _$$OrdersImplCopyWith(
          _$OrdersImpl value, $Res Function(_$OrdersImpl) then) =
      __$$OrdersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId,
      String paymentMethod,
      String status,
      String paymentId,
      int statusId,
      int amount});
}

/// @nodoc
class __$$OrdersImplCopyWithImpl<$Res>
    extends _$OrdersCopyWithImpl<$Res, _$OrdersImpl>
    implements _$$OrdersImplCopyWith<$Res> {
  __$$OrdersImplCopyWithImpl(
      _$OrdersImpl _value, $Res Function(_$OrdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? paymentMethod = null,
    Object? status = null,
    Object? paymentId = null,
    Object? statusId = null,
    Object? amount = null,
  }) {
    return _then(_$OrdersImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OrdersImpl implements _Orders {
  const _$OrdersImpl(
      {required this.userId,
      required this.paymentMethod,
      required this.status,
      required this.paymentId,
      required this.statusId,
      required this.amount});

  @override
  final int userId;
  @override
  final String paymentMethod;
  @override
  final String status;
  @override
  final String paymentId;
  @override
  final int statusId;
  @override
  final int amount;

  @override
  String toString() {
    return 'Orders(userId: $userId, paymentMethod: $paymentMethod, status: $status, paymentId: $paymentId, statusId: $statusId, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userId, paymentMethod, status, paymentId, statusId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersImplCopyWith<_$OrdersImpl> get copyWith =>
      __$$OrdersImplCopyWithImpl<_$OrdersImpl>(this, _$identity);
}

abstract class _Orders implements Orders {
  const factory _Orders(
      {required final int userId,
      required final String paymentMethod,
      required final String status,
      required final String paymentId,
      required final int statusId,
      required final int amount}) = _$OrdersImpl;

  @override
  int get userId;
  @override
  String get paymentMethod;
  @override
  String get status;
  @override
  String get paymentId;
  @override
  int get statusId;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$OrdersImplCopyWith<_$OrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
