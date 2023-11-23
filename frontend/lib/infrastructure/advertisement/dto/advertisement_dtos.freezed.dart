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
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "condition_id")
  int get conditonId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "brand_id")
  int get brandId => throw _privateConstructorUsedError;
  @JsonKey(name: "model_id")
  int get modelId => throw _privateConstructorUsedError;
  @JsonKey(name: "province_id")
  int? get provinceId => throw _privateConstructorUsedError;
  @JsonKey(name: "district_id")
  int? get districtId => throw _privateConstructorUsedError;
  String? get province => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get condition => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "advertiser_name")
  String? get advertiserName => throw _privateConstructorUsedError;
  @JsonKey(name: "create_date")
  String? get createDate => throw _privateConstructorUsedError;
  @JsonKey(name: "image_urls")
  List<String> get imageUrls => throw _privateConstructorUsedError;

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
      int price,
      @JsonKey(name: "condition_id") int conditonId,
      @JsonKey(name: "category_id") int categoryId,
      @JsonKey(name: "brand_id") int brandId,
      @JsonKey(name: "model_id") int modelId,
      @JsonKey(name: "province_id") int? provinceId,
      @JsonKey(name: "district_id") int? districtId,
      String? province,
      String? district,
      String? category,
      String? condition,
      String? brand,
      String? model,
      String? phone,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "advertiser_name") String? advertiserName,
      @JsonKey(name: "create_date") String? createDate,
      @JsonKey(name: "image_urls") List<String> imageUrls});
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
    Object? price = null,
    Object? conditonId = null,
    Object? categoryId = null,
    Object? brandId = null,
    Object? modelId = null,
    Object? provinceId = freezed,
    Object? districtId = freezed,
    Object? province = freezed,
    Object? district = freezed,
    Object? category = freezed,
    Object? condition = freezed,
    Object? brand = freezed,
    Object? model = freezed,
    Object? phone = freezed,
    Object? userId = freezed,
    Object? advertiserName = freezed,
    Object? createDate = freezed,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      conditonId: null == conditonId
          ? _value.conditonId
          : conditonId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int,
      modelId: null == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      advertiserName: freezed == advertiserName
          ? _value.advertiserName
          : advertiserName // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      int price,
      @JsonKey(name: "condition_id") int conditonId,
      @JsonKey(name: "category_id") int categoryId,
      @JsonKey(name: "brand_id") int brandId,
      @JsonKey(name: "model_id") int modelId,
      @JsonKey(name: "province_id") int? provinceId,
      @JsonKey(name: "district_id") int? districtId,
      String? province,
      String? district,
      String? category,
      String? condition,
      String? brand,
      String? model,
      String? phone,
      @JsonKey(name: "user_id") int? userId,
      @JsonKey(name: "advertiser_name") String? advertiserName,
      @JsonKey(name: "create_date") String? createDate,
      @JsonKey(name: "image_urls") List<String> imageUrls});
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
    Object? price = null,
    Object? conditonId = null,
    Object? categoryId = null,
    Object? brandId = null,
    Object? modelId = null,
    Object? provinceId = freezed,
    Object? districtId = freezed,
    Object? province = freezed,
    Object? district = freezed,
    Object? category = freezed,
    Object? condition = freezed,
    Object? brand = freezed,
    Object? model = freezed,
    Object? phone = freezed,
    Object? userId = freezed,
    Object? advertiserName = freezed,
    Object? createDate = freezed,
    Object? imageUrls = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      conditonId: null == conditonId
          ? _value.conditonId
          : conditonId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int,
      modelId: null == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int,
      provinceId: freezed == provinceId
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int?,
      districtId: freezed == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      advertiserName: freezed == advertiserName
          ? _value.advertiserName
          : advertiserName // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      required this.price,
      @JsonKey(name: "condition_id") required this.conditonId,
      @JsonKey(name: "category_id") required this.categoryId,
      @JsonKey(name: "brand_id") required this.brandId,
      @JsonKey(name: "model_id") required this.modelId,
      @JsonKey(name: "province_id") this.provinceId,
      @JsonKey(name: "district_id") this.districtId,
      this.province,
      this.district,
      this.category,
      this.condition,
      this.brand,
      this.model,
      this.phone,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "advertiser_name") this.advertiserName,
      @JsonKey(name: "create_date") this.createDate,
      @JsonKey(name: "image_urls") required final List<String> imageUrls})
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
  final int price;
  @override
  @JsonKey(name: "condition_id")
  final int conditonId;
  @override
  @JsonKey(name: "category_id")
  final int categoryId;
  @override
  @JsonKey(name: "brand_id")
  final int brandId;
  @override
  @JsonKey(name: "model_id")
  final int modelId;
  @override
  @JsonKey(name: "province_id")
  final int? provinceId;
  @override
  @JsonKey(name: "district_id")
  final int? districtId;
  @override
  final String? province;
  @override
  final String? district;
  @override
  final String? category;
  @override
  final String? condition;
  @override
  final String? brand;
  @override
  final String? model;
  @override
  final String? phone;
  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  @JsonKey(name: "advertiser_name")
  final String? advertiserName;
  @override
  @JsonKey(name: "create_date")
  final String? createDate;
  final List<String> _imageUrls;
  @override
  @JsonKey(name: "image_urls")
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  String toString() {
    return 'AdvertisementDto(id: $id, name: $name, description: $description, price: $price, conditonId: $conditonId, categoryId: $categoryId, brandId: $brandId, modelId: $modelId, provinceId: $provinceId, districtId: $districtId, province: $province, district: $district, category: $category, condition: $condition, brand: $brand, model: $model, phone: $phone, userId: $userId, advertiserName: $advertiserName, createDate: $createDate, imageUrls: $imageUrls)';
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
            (identical(other.price, price) || other.price == price) &&
            (identical(other.conditonId, conditonId) ||
                other.conditonId == conditonId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.modelId, modelId) || other.modelId == modelId) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId) &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.advertiserName, advertiserName) ||
                other.advertiserName == advertiserName) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        description,
        price,
        conditonId,
        categoryId,
        brandId,
        modelId,
        provinceId,
        districtId,
        province,
        district,
        category,
        condition,
        brand,
        model,
        phone,
        userId,
        advertiserName,
        createDate,
        const DeepCollectionEquality().hash(_imageUrls)
      ]);

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
          required final int price,
          @JsonKey(name: "condition_id") required final int conditonId,
          @JsonKey(name: "category_id") required final int categoryId,
          @JsonKey(name: "brand_id") required final int brandId,
          @JsonKey(name: "model_id") required final int modelId,
          @JsonKey(name: "province_id") final int? provinceId,
          @JsonKey(name: "district_id") final int? districtId,
          final String? province,
          final String? district,
          final String? category,
          final String? condition,
          final String? brand,
          final String? model,
          final String? phone,
          @JsonKey(name: "user_id") final int? userId,
          @JsonKey(name: "advertiser_name") final String? advertiserName,
          @JsonKey(name: "create_date") final String? createDate,
          @JsonKey(name: "image_urls") required final List<String> imageUrls}) =
      _$AdvertisementDtoImpl;
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
  int get price;
  @override
  @JsonKey(name: "condition_id")
  int get conditonId;
  @override
  @JsonKey(name: "category_id")
  int get categoryId;
  @override
  @JsonKey(name: "brand_id")
  int get brandId;
  @override
  @JsonKey(name: "model_id")
  int get modelId;
  @override
  @JsonKey(name: "province_id")
  int? get provinceId;
  @override
  @JsonKey(name: "district_id")
  int? get districtId;
  @override
  String? get province;
  @override
  String? get district;
  @override
  String? get category;
  @override
  String? get condition;
  @override
  String? get brand;
  @override
  String? get model;
  @override
  String? get phone;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  @JsonKey(name: "advertiser_name")
  String? get advertiserName;
  @override
  @JsonKey(name: "create_date")
  String? get createDate;
  @override
  @JsonKey(name: "image_urls")
  List<String> get imageUrls;
  @override
  @JsonKey(ignore: true)
  _$$AdvertisementDtoImplCopyWith<_$AdvertisementDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
