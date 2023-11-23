// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  Description get description => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  Brand get brand => throw _privateConstructorUsedError;
  Model get model => throw _privateConstructorUsedError;
  Stock get stock => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  int get conditionId => throw _privateConstructorUsedError;
  String? get condition => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int id,
      Name name,
      Description description,
      Category category,
      Brand brand,
      Model model,
      Stock stock,
      Price price,
      int conditionId,
      String? condition,
      List<String> imageUrls});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? category = null,
    Object? brand = null,
    Object? model = null,
    Object? stock = null,
    Object? price = null,
    Object? conditionId = null,
    Object? condition = freezed,
    Object? imageUrls = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Model,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as Stock,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      conditionId: null == conditionId
          ? _value.conditionId
          : conditionId // ignore: cast_nullable_to_non_nullable
              as int,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Name name,
      Description description,
      Category category,
      Brand brand,
      Model model,
      Stock stock,
      Price price,
      int conditionId,
      String? condition,
      List<String> imageUrls});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? category = null,
    Object? brand = null,
    Object? model = null,
    Object? stock = null,
    Object? price = null,
    Object? conditionId = null,
    Object? condition = freezed,
    Object? imageUrls = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Model,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as Stock,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      conditionId: null == conditionId
          ? _value.conditionId
          : conditionId // ignore: cast_nullable_to_non_nullable
              as int,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ProductImpl extends _Product {
  const _$ProductImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.category,
      required this.brand,
      required this.model,
      required this.stock,
      required this.price,
      required this.conditionId,
      this.condition,
      required final List<String> imageUrls})
      : _imageUrls = imageUrls,
        super._();

  @override
  final int id;
  @override
  final Name name;
  @override
  final Description description;
  @override
  final Category category;
  @override
  final Brand brand;
  @override
  final Model model;
  @override
  final Stock stock;
  @override
  final Price price;
  @override
  final int conditionId;
  @override
  final String? condition;
  final List<String> _imageUrls;
  @override
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, description: $description, category: $category, brand: $brand, model: $model, stock: $stock, price: $price, conditionId: $conditionId, condition: $condition, imageUrls: $imageUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.conditionId, conditionId) ||
                other.conditionId == conditionId) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      category,
      brand,
      model,
      stock,
      price,
      conditionId,
      condition,
      const DeepCollectionEquality().hash(_imageUrls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);
}

abstract class _Product extends Product {
  const factory _Product(
      {required final int id,
      required final Name name,
      required final Description description,
      required final Category category,
      required final Brand brand,
      required final Model model,
      required final Stock stock,
      required final Price price,
      required final int conditionId,
      final String? condition,
      required final List<String> imageUrls}) = _$ProductImpl;
  const _Product._() : super._();

  @override
  int get id;
  @override
  Name get name;
  @override
  Description get description;
  @override
  Category get category;
  @override
  Brand get brand;
  @override
  Model get model;
  @override
  Stock get stock;
  @override
  Price get price;
  @override
  int get conditionId;
  @override
  String? get condition;
  @override
  List<String> get imageUrls;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
