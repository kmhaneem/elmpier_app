// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return _ProductDto.fromJson(json);
}

/// @nodoc
mixin _$ProductDto {
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get productDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  int get productCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "brand")
  int get productBrand => throw _privateConstructorUsedError;
  @JsonKey(name: "model")
  int get productModel => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int get productQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int get productPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  List<String> get productImagesUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDtoCopyWith<ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDtoCopyWith<$Res> {
  factory $ProductDtoCopyWith(
          ProductDto value, $Res Function(ProductDto) then) =
      _$ProductDtoCopyWithImpl<$Res, ProductDto>;
  @useResult
  $Res call(
      {dynamic id,
      @JsonKey(name: "name") String productName,
      @JsonKey(name: "description") String productDescription,
      @JsonKey(name: "category") int productCategory,
      @JsonKey(name: "brand") int productBrand,
      @JsonKey(name: "model") int productModel,
      @JsonKey(name: "quantity") int productQuantity,
      @JsonKey(name: "price") int productPrice,
      @JsonKey(name: "url") List<String> productImagesUrl});
}

/// @nodoc
class _$ProductDtoCopyWithImpl<$Res, $Val extends ProductDto>
    implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productName = null,
    Object? productDescription = null,
    Object? productCategory = null,
    Object? productBrand = null,
    Object? productModel = null,
    Object? productQuantity = null,
    Object? productPrice = null,
    Object? productImagesUrl = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      productCategory: null == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as int,
      productBrand: null == productBrand
          ? _value.productBrand
          : productBrand // ignore: cast_nullable_to_non_nullable
              as int,
      productModel: null == productModel
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as int,
      productQuantity: null == productQuantity
          ? _value.productQuantity
          : productQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as int,
      productImagesUrl: null == productImagesUrl
          ? _value.productImagesUrl
          : productImagesUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDtoCopyWith<$Res>
    implements $ProductDtoCopyWith<$Res> {
  factory _$$_ProductDtoCopyWith(
          _$_ProductDto value, $Res Function(_$_ProductDto) then) =
      __$$_ProductDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      @JsonKey(name: "name") String productName,
      @JsonKey(name: "description") String productDescription,
      @JsonKey(name: "category") int productCategory,
      @JsonKey(name: "brand") int productBrand,
      @JsonKey(name: "model") int productModel,
      @JsonKey(name: "quantity") int productQuantity,
      @JsonKey(name: "price") int productPrice,
      @JsonKey(name: "url") List<String> productImagesUrl});
}

/// @nodoc
class __$$_ProductDtoCopyWithImpl<$Res>
    extends _$ProductDtoCopyWithImpl<$Res, _$_ProductDto>
    implements _$$_ProductDtoCopyWith<$Res> {
  __$$_ProductDtoCopyWithImpl(
      _$_ProductDto _value, $Res Function(_$_ProductDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productName = null,
    Object? productDescription = null,
    Object? productCategory = null,
    Object? productBrand = null,
    Object? productModel = null,
    Object? productQuantity = null,
    Object? productPrice = null,
    Object? productImagesUrl = null,
  }) {
    return _then(_$_ProductDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      productCategory: null == productCategory
          ? _value.productCategory
          : productCategory // ignore: cast_nullable_to_non_nullable
              as int,
      productBrand: null == productBrand
          ? _value.productBrand
          : productBrand // ignore: cast_nullable_to_non_nullable
              as int,
      productModel: null == productModel
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as int,
      productQuantity: null == productQuantity
          ? _value.productQuantity
          : productQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as int,
      productImagesUrl: null == productImagesUrl
          ? _value._productImagesUrl
          : productImagesUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDto extends _ProductDto {
  const _$_ProductDto(
      {required this.id,
      @JsonKey(name: "name") required this.productName,
      @JsonKey(name: "description") required this.productDescription,
      @JsonKey(name: "category") required this.productCategory,
      @JsonKey(name: "brand") required this.productBrand,
      @JsonKey(name: "model") required this.productModel,
      @JsonKey(name: "quantity") required this.productQuantity,
      @JsonKey(name: "price") required this.productPrice,
      @JsonKey(name: "url") required final List<String> productImagesUrl})
      : _productImagesUrl = productImagesUrl,
        super._();

  factory _$_ProductDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDtoFromJson(json);

  @override
  final dynamic id;
  @override
  @JsonKey(name: "name")
  final String productName;
  @override
  @JsonKey(name: "description")
  final String productDescription;
  @override
  @JsonKey(name: "category")
  final int productCategory;
  @override
  @JsonKey(name: "brand")
  final int productBrand;
  @override
  @JsonKey(name: "model")
  final int productModel;
  @override
  @JsonKey(name: "quantity")
  final int productQuantity;
  @override
  @JsonKey(name: "price")
  final int productPrice;
  final List<String> _productImagesUrl;
  @override
  @JsonKey(name: "url")
  List<String> get productImagesUrl {
    if (_productImagesUrl is EqualUnmodifiableListView)
      return _productImagesUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productImagesUrl);
  }

  @override
  String toString() {
    return 'ProductDto(id: $id, productName: $productName, productDescription: $productDescription, productCategory: $productCategory, productBrand: $productBrand, productModel: $productModel, productQuantity: $productQuantity, productPrice: $productPrice, productImagesUrl: $productImagesUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.productCategory, productCategory) ||
                other.productCategory == productCategory) &&
            (identical(other.productBrand, productBrand) ||
                other.productBrand == productBrand) &&
            (identical(other.productModel, productModel) ||
                other.productModel == productModel) &&
            (identical(other.productQuantity, productQuantity) ||
                other.productQuantity == productQuantity) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            const DeepCollectionEquality()
                .equals(other._productImagesUrl, _productImagesUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      productName,
      productDescription,
      productCategory,
      productBrand,
      productModel,
      productQuantity,
      productPrice,
      const DeepCollectionEquality().hash(_productImagesUrl));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDtoCopyWith<_$_ProductDto> get copyWith =>
      __$$_ProductDtoCopyWithImpl<_$_ProductDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDtoToJson(
      this,
    );
  }
}

abstract class _ProductDto extends ProductDto {
  const factory _ProductDto(
      {required final dynamic id,
      @JsonKey(name: "name")
          required final String productName,
      @JsonKey(name: "description")
          required final String productDescription,
      @JsonKey(name: "category")
          required final int productCategory,
      @JsonKey(name: "brand")
          required final int productBrand,
      @JsonKey(name: "model")
          required final int productModel,
      @JsonKey(name: "quantity")
          required final int productQuantity,
      @JsonKey(name: "price")
          required final int productPrice,
      @JsonKey(name: "url")
          required final List<String> productImagesUrl}) = _$_ProductDto;
  const _ProductDto._() : super._();

  factory _ProductDto.fromJson(Map<String, dynamic> json) =
      _$_ProductDto.fromJson;

  @override
  dynamic get id;
  @override
  @JsonKey(name: "name")
  String get productName;
  @override
  @JsonKey(name: "description")
  String get productDescription;
  @override
  @JsonKey(name: "category")
  int get productCategory;
  @override
  @JsonKey(name: "brand")
  int get productBrand;
  @override
  @JsonKey(name: "model")
  int get productModel;
  @override
  @JsonKey(name: "quantity")
  int get productQuantity;
  @override
  @JsonKey(name: "price")
  int get productPrice;
  @override
  @JsonKey(name: "url")
  List<String> get productImagesUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDtoCopyWith<_$_ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}
