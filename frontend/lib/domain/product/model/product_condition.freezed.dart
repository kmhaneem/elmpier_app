// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_condition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductCondition {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductConditionCopyWith<ProductCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductConditionCopyWith<$Res> {
  factory $ProductConditionCopyWith(
          ProductCondition value, $Res Function(ProductCondition) then) =
      _$ProductConditionCopyWithImpl<$Res, ProductCondition>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$ProductConditionCopyWithImpl<$Res, $Val extends ProductCondition>
    implements $ProductConditionCopyWith<$Res> {
  _$ProductConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductConditionImplCopyWith<$Res>
    implements $ProductConditionCopyWith<$Res> {
  factory _$$ProductConditionImplCopyWith(_$ProductConditionImpl value,
          $Res Function(_$ProductConditionImpl) then) =
      __$$ProductConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$ProductConditionImplCopyWithImpl<$Res>
    extends _$ProductConditionCopyWithImpl<$Res, _$ProductConditionImpl>
    implements _$$ProductConditionImplCopyWith<$Res> {
  __$$ProductConditionImplCopyWithImpl(_$ProductConditionImpl _value,
      $Res Function(_$ProductConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ProductConditionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductConditionImpl implements _ProductCondition {
  const _$ProductConditionImpl({required this.id, required this.name});

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'ProductCondition(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductConditionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductConditionImplCopyWith<_$ProductConditionImpl> get copyWith =>
      __$$ProductConditionImplCopyWithImpl<_$ProductConditionImpl>(
          this, _$identity);
}

abstract class _ProductCondition implements ProductCondition {
  const factory _ProductCondition(
      {required final int id,
      required final String name}) = _$ProductConditionImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ProductConditionImplCopyWith<_$ProductConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
