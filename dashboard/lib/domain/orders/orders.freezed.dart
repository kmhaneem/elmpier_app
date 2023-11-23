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
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get statusId => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get transactionId => throw _privateConstructorUsedError;
  String? get statusName => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersCopyWith<Orders> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersCopyWith<$Res> {
  factory $OrdersCopyWith(Orders value, $Res Function(Orders) then) =
      _$OrdersCopyWithImpl<$Res, Orders>;
  @useResult
  $Res call(
      {int id,
      int userId,
      int statusId,
      int amount,
      int transactionId,
      String? statusName,
      String? username});
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
    Object? id = null,
    Object? userId = null,
    Object? statusId = null,
    Object? amount = null,
    Object? transactionId = null,
    Object? statusName = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int,
      statusName: freezed == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {int id,
      int userId,
      int statusId,
      int amount,
      int transactionId,
      String? statusName,
      String? username});
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
    Object? id = null,
    Object? userId = null,
    Object? statusId = null,
    Object? amount = null,
    Object? transactionId = null,
    Object? statusName = freezed,
    Object? username = freezed,
  }) {
    return _then(_$OrdersImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int,
      statusName: freezed == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OrdersImpl extends _Orders {
  const _$OrdersImpl(
      {required this.id,
      required this.userId,
      required this.statusId,
      required this.amount,
      required this.transactionId,
      this.statusName,
      this.username})
      : super._();

  @override
  final int id;
  @override
  final int userId;
  @override
  final int statusId;
  @override
  final int amount;
  @override
  final int transactionId;
  @override
  final String? statusName;
  @override
  final String? username;

  @override
  String toString() {
    return 'Orders(id: $id, userId: $userId, statusId: $statusId, amount: $amount, transactionId: $transactionId, statusName: $statusName, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.statusName, statusName) ||
                other.statusName == statusName) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, statusId, amount,
      transactionId, statusName, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersImplCopyWith<_$OrdersImpl> get copyWith =>
      __$$OrdersImplCopyWithImpl<_$OrdersImpl>(this, _$identity);
}

abstract class _Orders extends Orders {
  const factory _Orders(
      {required final int id,
      required final int userId,
      required final int statusId,
      required final int amount,
      required final int transactionId,
      final String? statusName,
      final String? username}) = _$OrdersImpl;
  const _Orders._() : super._();

  @override
  int get id;
  @override
  int get userId;
  @override
  int get statusId;
  @override
  int get amount;
  @override
  int get transactionId;
  @override
  String? get statusName;
  @override
  String? get username;
  @override
  @JsonKey(ignore: true)
  _$$OrdersImplCopyWith<_$OrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
