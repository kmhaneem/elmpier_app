// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_reject_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductRejectDto _$ProductRejectDtoFromJson(Map<String, dynamic> json) {
  return _ProductRejectDto.fromJson(json);
}

/// @nodoc
mixin _$ProductRejectDto {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  int get productId => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get productname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductRejectDtoCopyWith<ProductRejectDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductRejectDtoCopyWith<$Res> {
  factory $ProductRejectDtoCopyWith(
          ProductRejectDto value, $Res Function(ProductRejectDto) then) =
      _$ProductRejectDtoCopyWithImpl<$Res, ProductRejectDto>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "product_id") int productId,
      String? reason,
      String? productname});
}

/// @nodoc
class _$ProductRejectDtoCopyWithImpl<$Res, $Val extends ProductRejectDto>
    implements $ProductRejectDtoCopyWith<$Res> {
  _$ProductRejectDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? reason = freezed,
    Object? productname = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      productname: freezed == productname
          ? _value.productname
          : productname // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductRejectDtoImplCopyWith<$Res>
    implements $ProductRejectDtoCopyWith<$Res> {
  factory _$$ProductRejectDtoImplCopyWith(_$ProductRejectDtoImpl value,
          $Res Function(_$ProductRejectDtoImpl) then) =
      __$$ProductRejectDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "product_id") int productId,
      String? reason,
      String? productname});
}

/// @nodoc
class __$$ProductRejectDtoImplCopyWithImpl<$Res>
    extends _$ProductRejectDtoCopyWithImpl<$Res, _$ProductRejectDtoImpl>
    implements _$$ProductRejectDtoImplCopyWith<$Res> {
  __$$ProductRejectDtoImplCopyWithImpl(_$ProductRejectDtoImpl _value,
      $Res Function(_$ProductRejectDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? reason = freezed,
    Object? productname = freezed,
  }) {
    return _then(_$ProductRejectDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      productname: freezed == productname
          ? _value.productname
          : productname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductRejectDtoImpl extends _ProductRejectDto {
  const _$ProductRejectDtoImpl(
      {required this.id,
      @JsonKey(name: "product_id") required this.productId,
      this.reason,
      this.productname})
      : super._();

  factory _$ProductRejectDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductRejectDtoImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "product_id")
  final int productId;
  @override
  final String? reason;
  @override
  final String? productname;

  @override
  String toString() {
    return 'ProductRejectDto(id: $id, productId: $productId, reason: $reason, productname: $productname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRejectDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.productname, productname) ||
                other.productname == productname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, productId, reason, productname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRejectDtoImplCopyWith<_$ProductRejectDtoImpl> get copyWith =>
      __$$ProductRejectDtoImplCopyWithImpl<_$ProductRejectDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductRejectDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductRejectDto extends ProductRejectDto {
  const factory _ProductRejectDto(
      {required final int id,
      @JsonKey(name: "product_id") required final int productId,
      final String? reason,
      final String? productname}) = _$ProductRejectDtoImpl;
  const _ProductRejectDto._() : super._();

  factory _ProductRejectDto.fromJson(Map<String, dynamic> json) =
      _$ProductRejectDtoImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "product_id")
  int get productId;
  @override
  String? get reason;
  @override
  String? get productname;
  @override
  @JsonKey(ignore: true)
  _$$ProductRejectDtoImplCopyWith<_$ProductRejectDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
