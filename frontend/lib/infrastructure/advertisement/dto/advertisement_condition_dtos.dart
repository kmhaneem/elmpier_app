import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/advertisement/model/advertisement_condition.dart';
part 'advertisement_condition_dtos.freezed.dart';
part 'advertisement_condition_dtos.g.dart';

@freezed
class AdvertisementConditionDto with _$AdvertisementConditionDto {
  const AdvertisementConditionDto._();

  const factory AdvertisementConditionDto(
      {required int id, required String name}) = _AdvertisementConditionDto;

  factory AdvertisementConditionDto.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementConditionDtoFromJson(json);

  factory AdvertisementConditionDto.fromDomain(
      AdvertisementCondition condition) {
    return AdvertisementConditionDto(
      id: condition.id,
      name: condition.name,
    );
  }

  AdvertisementCondition toDomain() {
    return AdvertisementCondition(
      id: id,
      name: name,
    );
  }
}
