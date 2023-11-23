// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advertisement_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdvertisementDto _$AdvertisementDtoFromJson(Map<String, dynamic> json) {
  return _AdvertisementDto.fromJson(json);
}

/// @nodoc
mixin _$AdvertisementDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_id')
  int get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_id')
  int get model => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvertisementDtoCopyWith<AdvertisementDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementDtoCopyWith<$Res> {
  factory $AdvertisementDtoCopyWith(
          AdvertisementDto value, $Res Function(AdvertisementDto) then) =
      _$AdvertisementDtoCopyWithImpl<$Res, AdvertisementDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      @JsonKey(name: 'category_id') int category,
      @JsonKey(name: 'brand_id') int brand,
      @JsonKey(name: 'model_id') int model,
      @JsonKey(name: 'image_urls') List<String> imageUrls,
      int price});
}

/// @nodoc
class _$AdvertisementDtoCopyWithImpl<$Res, $Val extends AdvertisementDto>
    implements $AdvertisementDtoCopyWith<$Res> {
  _$AdvertisementDtoCopyWithImpl(this._value, this._then);

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
    Object? imageUrls = null,
    Object? price = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvertisementDtoImplCopyWith<$Res>
    implements $AdvertisementDtoCopyWith<$Res> {
  factory _$$AdvertisementDtoImplCopyWith(_$AdvertisementDtoImpl value,
          $Res Function(_$AdvertisementDtoImpl) then) =
      __$$AdvertisementDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      @JsonKey(name: 'category_id') int category,
      @JsonKey(name: 'brand_id') int brand,
      @JsonKey(name: 'model_id') int model,
      @JsonKey(name: 'image_urls') List<String> imageUrls,
      int price});
}

/// @nodoc
class __$$AdvertisementDtoImplCopyWithImpl<$Res>
    extends _$AdvertisementDtoCopyWithImpl<$Res, _$AdvertisementDtoImpl>
    implements _$$AdvertisementDtoImplCopyWith<$Res> {
  __$$AdvertisementDtoImplCopyWithImpl(_$AdvertisementDtoImpl _value,
      $Res Function(_$AdvertisementDtoImpl) _then)
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
    Object? imageUrls = null,
    Object? price = null,
  }) {
    return _then(_$AdvertisementDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvertisementDtoImpl extends _AdvertisementDto {
  const _$AdvertisementDtoImpl(
      {required this.id,
      required this.name,
      required this.description,
      @JsonKey(name: 'category_id') required this.category,
      @JsonKey(name: 'brand_id') required this.brand,
      @JsonKey(name: 'model_id') required this.model,
      @JsonKey(name: 'image_urls') required final List<String> imageUrls,
      required this.price})
      : _imageUrls = imageUrls,
        super._();

  factory _$AdvertisementDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvertisementDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  @JsonKey(name: 'category_id')
  final int category;
  @override
  @JsonKey(name: 'brand_id')
  final int brand;
  @override
  @JsonKey(name: 'model_id')
  final int model;
  final List<String> _imageUrls;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  final int price;

  @override
  String toString() {
    return 'AdvertisementDto(id: $id, name: $name, description: $description, category: $category, brand: $brand, model: $model, imageUrls: $imageUrls, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, category,
      brand, model, const DeepCollectionEquality().hash(_imageUrls), price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisementDtoImplCopyWith<_$AdvertisementDtoImpl> get copyWith =>
      __$$AdvertisementDtoImplCopyWithImpl<_$AdvertisementDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvertisementDtoImplToJson(
      this,
    );
  }
}

abstract class _AdvertisementDto extends AdvertisementDto {
  const factory _AdvertisementDto(
      {required final int id,
      required final String name,
      required final String description,
      @JsonKey(name: 'category_id') required final int category,
      @JsonKey(name: 'brand_id') required final int brand,
      @JsonKey(name: 'model_id') required final int model,
      @JsonKey(name: 'image_urls') required final List<String> imageUrls,
      required final int price}) = _$AdvertisementDtoImpl;
  const _AdvertisementDto._() : super._();

  factory _AdvertisementDto.fromJson(Map<String, dynamic> json) =
      _$AdvertisementDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(name: 'category_id')
  int get category;
  @override
  @JsonKey(name: 'brand_id')
  int get brand;
  @override
  @JsonKey(name: 'model_id')
  int get model;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$AdvertisementDtoImplCopyWith<_$AdvertisementDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
