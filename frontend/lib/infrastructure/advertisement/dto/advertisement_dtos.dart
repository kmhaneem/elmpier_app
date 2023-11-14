import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/advertisement/model/advertisement.dart';
part 'advertisement_dtos.freezed.dart';
part 'advertisement_dtos.g.dart';

// @JsonSerializable()
@freezed
class AdvertisementDto with _$AdvertisementDto {
  const AdvertisementDto._();

  const factory AdvertisementDto({
    required int id,
    required String name,
    required String description,
    required int price,
    @JsonKey(name: "condition_id") required int conditonId,
    @JsonKey(name: "category_id") required int categoryId,
    @JsonKey(name: "brand_id") required int brandId,
    @JsonKey(name: "model_id") required int modelId,
    @JsonKey(name: "province_id") required int provinceId,
    @JsonKey(name: "district_id") required int districtId,
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

    @JsonKey(name: "image_urls") required List<String> imageUrls,
  }) = _AdvertisementDto;

  factory AdvertisementDto.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementDtoFromJson(json);

  factory AdvertisementDto.fromDomain(Advertisement advertisement) {
    return AdvertisementDto(
      id: advertisement.id,
      name: advertisement.name,
      description: advertisement.description,
      price: advertisement.price,
      conditonId: advertisement.conditionId,
      categoryId: advertisement.categoryId,
      brandId: advertisement.brandId,
      modelId: advertisement.modelId,
      provinceId: advertisement.provinceId,
      districtId: advertisement.districtId,
      imageUrls: advertisement.imageUrls,
      province: advertisement.province,
      district: advertisement.district,
      category: advertisement.category,
      brand: advertisement.brand,
      model: advertisement.model,
      condition: advertisement.condition,
      phone: advertisement.phone,
      advertiserName: advertisement.advertiserName,
      createDate: advertisement.createDate,
      userId: advertisement.userId
    );
  }

  Advertisement toDomain() {
    return Advertisement(
      id: id,
      name: name,
      description: description,
      price: price,
      conditionId: conditonId,
      categoryId: categoryId,
      brandId: brandId,
      modelId: modelId,
      imageUrls: imageUrls,
      districtId: districtId,
      provinceId: provinceId,
      province: province,
      district: district,
      category: category,
      brand: brand,
      model: model,
      condition: condition,
      phone: phone,
      advertiserName: advertiserName,
      createDate: createDate,
      userId: userId
    );
  }
}
