// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status_dto.dart';

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
  @JsonKey(name: "status_name")
  String get statusName => throw _privateConstructorUsedError;

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
  $Res call({int id, @JsonKey(name: "status_name") String statusName});
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
abstract class _$$OrderStatusDtoImplCopyWith<$Res>
    implements $OrderStatusDtoCopyWith<$Res> {
  factory _$$OrderStatusDtoImplCopyWith(_$OrderStatusDtoImpl value,
          $Res Function(_$OrderStatusDtoImpl) then) =
      __$$OrderStatusDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: "status_name") String statusName});
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
    Object? statusName = null,
  }) {
    return _then(_$OrderStatusDtoImpl(
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
@JsonSerializable()
class _$OrderStatusDtoImpl extends _OrderStatusDto {
  const _$OrderStatusDtoImpl(
      {required this.id,
      @JsonKey(name: "status_name") required this.statusName})
      : super._();

  factory _$OrderStatusDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderStatusDtoImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "status_name")
  final String statusName;

  @override
  String toString() {
    return 'OrderStatusDto(id: $id, statusName: $statusName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.statusName, statusName) ||
                other.statusName == statusName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, statusName);

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
          @JsonKey(name: "status_name") required final String statusName}) =
      _$OrderStatusDtoImpl;
  const _OrderStatusDto._() : super._();

  factory _OrderStatusDto.fromJson(Map<String, dynamic> json) =
      _$OrderStatusDtoImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "status_name")
  String get statusName;
  @override
  @JsonKey(ignore: true)
  _$$OrderStatusDtoImplCopyWith<_$OrderStatusDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
