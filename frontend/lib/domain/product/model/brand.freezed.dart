// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductBrand {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductBrandCopyWith<ProductBrand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductBrandCopyWith<$Res> {
  factory $ProductBrandCopyWith(
          ProductBrand value, $Res Function(ProductBrand) then) =
      _$ProductBrandCopyWithImpl<$Res, ProductBrand>;
  @useResult
  $Res call({int id, String name, int categoryId});
}

/// @nodoc
class _$ProductBrandCopyWithImpl<$Res, $Val extends ProductBrand>
    implements $ProductBrandCopyWith<$Res> {
  _$ProductBrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoryId = null,
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
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductBrandCopyWith<$Res>
    implements $ProductBrandCopyWith<$Res> {
  factory _$$_ProductBrandCopyWith(
          _$_ProductBrand value, $Res Function(_$_ProductBrand) then) =
      __$$_ProductBrandCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int categoryId});
}

/// @nodoc
class __$$_ProductBrandCopyWithImpl<$Res>
    extends _$ProductBrandCopyWithImpl<$Res, _$_ProductBrand>
    implements _$$_ProductBrandCopyWith<$Res> {
  __$$_ProductBrandCopyWithImpl(
      _$_ProductBrand _value, $Res Function(_$_ProductBrand) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoryId = null,
  }) {
    return _then(_$_ProductBrand(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ProductBrand implements _ProductBrand {
  const _$_ProductBrand(
      {required this.id, required this.name, required this.categoryId});

  @override
  final int id;
  @override
  final String name;
  @override
  final int categoryId;

  @override
  String toString() {
    return 'ProductBrand(id: $id, name: $name, categoryId: $categoryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductBrand &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductBrandCopyWith<_$_ProductBrand> get copyWith =>
      __$$_ProductBrandCopyWithImpl<_$_ProductBrand>(this, _$identity);
}

abstract class _ProductBrand implements ProductBrand {
  const factory _ProductBrand(
      {required final int id,
      required final String name,
      required final int categoryId}) = _$_ProductBrand;

  @override
  int get id;
  @override
  String get name;
  @override
  int get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$_ProductBrandCopyWith<_$_ProductBrand> get copyWith =>
      throw _privateConstructorUsedError;
}
