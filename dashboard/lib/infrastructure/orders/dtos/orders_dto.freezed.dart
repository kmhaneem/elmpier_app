// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrdersDto _$OrdersDtoFromJson(Map<String, dynamic> json) {
  return _OrdersDto.fromJson(json);
}

/// @nodoc
mixin _$OrdersDto {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_id")
  int get statusId => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_id")
  int get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: "status_name")
  String? get statusName => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersDtoCopyWith<OrdersDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersDtoCopyWith<$Res> {
  factory $OrdersDtoCopyWith(OrdersDto value, $Res Function(OrdersDto) then) =
      _$OrdersDtoCopyWithImpl<$Res, OrdersDto>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "user_id") int userId,
      @JsonKey(name: "status_id") int statusId,
      int amount,
      @JsonKey(name: "transaction_id") int transactionId,
      @JsonKey(name: "status_name") String? statusName,
      String? username});
}

/// @nodoc
class _$OrdersDtoCopyWithImpl<$Res, $Val extends OrdersDto>
    implements $OrdersDtoCopyWith<$Res> {
  _$OrdersDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$OrdersDtoImplCopyWith<$Res>
    implements $OrdersDtoCopyWith<$Res> {
  factory _$$OrdersDtoImplCopyWith(
          _$OrdersDtoImpl value, $Res Function(_$OrdersDtoImpl) then) =
      __$$OrdersDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "user_id") int userId,
      @JsonKey(name: "status_id") int statusId,
      int amount,
      @JsonKey(name: "transaction_id") int transactionId,
      @JsonKey(name: "status_name") String? statusName,
      String? username});
}

/// @nodoc
class __$$OrdersDtoImplCopyWithImpl<$Res>
    extends _$OrdersDtoCopyWithImpl<$Res, _$OrdersDtoImpl>
    implements _$$OrdersDtoImplCopyWith<$Res> {
  __$$OrdersDtoImplCopyWithImpl(
      _$OrdersDtoImpl _value, $Res Function(_$OrdersDtoImpl) _then)
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
    return _then(_$OrdersDtoImpl(
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
@JsonSerializable()
class _$OrdersDtoImpl extends _OrdersDto {
  const _$OrdersDtoImpl(
      {required this.id,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "status_id") required this.statusId,
      required this.amount,
      @JsonKey(name: "transaction_id") required this.transactionId,
      @JsonKey(name: "status_name") this.statusName,
      this.username})
      : super._();

  factory _$OrdersDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrdersDtoImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "user_id")
  final int userId;
  @override
  @JsonKey(name: "status_id")
  final int statusId;
  @override
  final int amount;
  @override
  @JsonKey(name: "transaction_id")
  final int transactionId;
  @override
  @JsonKey(name: "status_name")
  final String? statusName;
  @override
  final String? username;

  @override
  String toString() {
    return 'OrdersDto(id: $id, userId: $userId, statusId: $statusId, amount: $amount, transactionId: $transactionId, statusName: $statusName, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersDtoImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, statusId, amount,
      transactionId, statusName, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersDtoImplCopyWith<_$OrdersDtoImpl> get copyWith =>
      __$$OrdersDtoImplCopyWithImpl<_$OrdersDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrdersDtoImplToJson(
      this,
    );
  }
}

abstract class _OrdersDto extends OrdersDto {
  const factory _OrdersDto(
      {required final int id,
      @JsonKey(name: "user_id") required final int userId,
      @JsonKey(name: "status_id") required final int statusId,
      required final int amount,
      @JsonKey(name: "transaction_id") required final int transactionId,
      @JsonKey(name: "status_name") final String? statusName,
      final String? username}) = _$OrdersDtoImpl;
  const _OrdersDto._() : super._();

  factory _OrdersDto.fromJson(Map<String, dynamic> json) =
      _$OrdersDtoImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "user_id")
  int get userId;
  @override
  @JsonKey(name: "status_id")
  int get statusId;
  @override
  int get amount;
  @override
  @JsonKey(name: "transaction_id")
  int get transactionId;
  @override
  @JsonKey(name: "status_name")
  String? get statusName;
  @override
  String? get username;
  @override
  @JsonKey(ignore: true)
  _$$OrdersDtoImplCopyWith<_$OrdersDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
