// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_reject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductReject {
  int get id => throw _privateConstructorUsedError;
  int get productId => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get productname => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductRejectCopyWith<ProductReject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductRejectCopyWith<$Res> {
  factory $ProductRejectCopyWith(
          ProductReject value, $Res Function(ProductReject) then) =
      _$ProductRejectCopyWithImpl<$Res, ProductReject>;
  @useResult
  $Res call({int id, int productId, String? reason, String? productname});
}

/// @nodoc
class _$ProductRejectCopyWithImpl<$Res, $Val extends ProductReject>
    implements $ProductRejectCopyWith<$Res> {
  _$ProductRejectCopyWithImpl(this._value, this._then);

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
abstract class _$$ProductRejectImplCopyWith<$Res>
    implements $ProductRejectCopyWith<$Res> {
  factory _$$ProductRejectImplCopyWith(
          _$ProductRejectImpl value, $Res Function(_$ProductRejectImpl) then) =
      __$$ProductRejectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int productId, String? reason, String? productname});
}

/// @nodoc
class __$$ProductRejectImplCopyWithImpl<$Res>
    extends _$ProductRejectCopyWithImpl<$Res, _$ProductRejectImpl>
    implements _$$ProductRejectImplCopyWith<$Res> {
  __$$ProductRejectImplCopyWithImpl(
      _$ProductRejectImpl _value, $Res Function(_$ProductRejectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? reason = freezed,
    Object? productname = freezed,
  }) {
    return _then(_$ProductRejectImpl(
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

class _$ProductRejectImpl implements _ProductReject {
  const _$ProductRejectImpl(
      {required this.id,
      required this.productId,
      this.reason,
      this.productname});

  @override
  final int id;
  @override
  final int productId;
  @override
  final String? reason;
  @override
  final String? productname;

  @override
  String toString() {
    return 'ProductReject(id: $id, productId: $productId, reason: $reason, productname: $productname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRejectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.productname, productname) ||
                other.productname == productname));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, productId, reason, productname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRejectImplCopyWith<_$ProductRejectImpl> get copyWith =>
      __$$ProductRejectImplCopyWithImpl<_$ProductRejectImpl>(this, _$identity);
}

abstract class _ProductReject implements ProductReject {
  const factory _ProductReject(
      {required final int id,
      required final int productId,
      final String? reason,
      final String? productname}) = _$ProductRejectImpl;

  @override
  int get id;
  @override
  int get productId;
  @override
  String? get reason;
  @override
  String? get productname;
  @override
  @JsonKey(ignore: true)
  _$$ProductRejectImplCopyWith<_$ProductRejectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
