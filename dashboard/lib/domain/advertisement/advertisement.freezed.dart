// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advertisement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Advertisement {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get category => throw _privateConstructorUsedError;
  int get brand => throw _privateConstructorUsedError;
  int get model => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdvertisementCopyWith<Advertisement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementCopyWith<$Res> {
  factory $AdvertisementCopyWith(
          Advertisement value, $Res Function(Advertisement) then) =
      _$AdvertisementCopyWithImpl<$Res, Advertisement>;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      int category,
      int brand,
      int model,
      int price,
      List<String> imageUrls});
}

/// @nodoc
class _$AdvertisementCopyWithImpl<$Res, $Val extends Advertisement>
    implements $AdvertisementCopyWith<$Res> {
  _$AdvertisementCopyWithImpl(this._value, this._then);

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
    Object? price = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvertisementImplCopyWith<$Res>
    implements $AdvertisementCopyWith<$Res> {
  factory _$$AdvertisementImplCopyWith(
          _$AdvertisementImpl value, $Res Function(_$AdvertisementImpl) then) =
      __$$AdvertisementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      int category,
      int brand,
      int model,
      int price,
      List<String> imageUrls});
}

/// @nodoc
class __$$AdvertisementImplCopyWithImpl<$Res>
    extends _$AdvertisementCopyWithImpl<$Res, _$AdvertisementImpl>
    implements _$$AdvertisementImplCopyWith<$Res> {
  __$$AdvertisementImplCopyWithImpl(
      _$AdvertisementImpl _value, $Res Function(_$AdvertisementImpl) _then)
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
    Object? price = null,
    Object? imageUrls = null,
  }) {
    return _then(_$AdvertisementImpl(
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$AdvertisementImpl extends _Advertisement {
  const _$AdvertisementImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.category,
      required this.brand,
      required this.model,
      required this.price,
      required final List<String> imageUrls})
      : _imageUrls = imageUrls,
        super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int category;
  @override
  final int brand;
  @override
  final int model;
  @override
  final int price;
  final List<String> _imageUrls;
  @override
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  String toString() {
    return 'Advertisement(id: $id, name: $name, description: $description, category: $category, brand: $brand, model: $model, price: $price, imageUrls: $imageUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertisementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, category,
      brand, model, price, const DeepCollectionEquality().hash(_imageUrls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertisementImplCopyWith<_$AdvertisementImpl> get copyWith =>
      __$$AdvertisementImplCopyWithImpl<_$AdvertisementImpl>(this, _$identity);
}

abstract class _Advertisement extends Advertisement {
  const factory _Advertisement(
      {required final int id,
      required final String name,
      required final String description,
      required final int category,
      required final int brand,
      required final int model,
      required final int price,
      required final List<String> imageUrls}) = _$AdvertisementImpl;
  const _Advertisement._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get category;
  @override
  int get brand;
  @override
  int get model;
  @override
  int get price;
  @override
  List<String> get imageUrls;
  @override
  @JsonKey(ignore: true)
  _$$AdvertisementImplCopyWith<_$AdvertisementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
