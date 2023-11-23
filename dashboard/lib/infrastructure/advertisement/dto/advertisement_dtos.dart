import 'package:dashboard/domain/advertisement/advertisement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'advertisement_dtos.freezed.dart';
part 'advertisement_dtos.g.dart';

@freezed
class AdvertisementDto with _$AdvertisementDto {
  const AdvertisementDto._();

  const factory AdvertisementDto({
    required int id,
    required String name,
    required String description,
    @JsonKey(name: 'category_id') required int category,
    @JsonKey(name: 'brand_id') required int brand,
    @JsonKey(name: 'model_id') required int model,
    @JsonKey(name: 'image_urls') required List<String> imageUrls,
    required int price,
  }) = _AdvertisementDto;

  factory AdvertisementDto.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementDtoFromJson(json);

  factory AdvertisementDto.fromDomain(Advertisement advertisement) {
    return AdvertisementDto(
      id: advertisement.id,
      name: advertisement.name,
      description: advertisement.description,
      category: advertisement.category,
      brand: advertisement.brand,
      model: advertisement.model,
      price: advertisement.price,
      imageUrls: advertisement.imageUrls,
    );
  }

  Advertisement toDomain() {
    return Advertisement(
      id: id,
      name: name,
      description: description,
      category: category,
      brand: brand,
      model: model,
      price: price,
      imageUrls: imageUrls,
    );
  }
}
