import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/user/user_address/model/district.dart';
part 'district_dto.freezed.dart';
part 'district_dto.g.dart';

@freezed
class DistrictDto with _$DistrictDto {
  const DistrictDto._();

  const factory DistrictDto({
    required int id,
    required String name,
    @JsonKey(name: "province_id") required int provinceId,
  }) = _DistrictDto;

  factory DistrictDto.fromJson(Map<String, dynamic> json) =>
      _$DistrictDtoFromJson(json);

  factory DistrictDto.fromDomain(District district) {
    return DistrictDto(
      id: district.id,
      name: district.name,
      provinceId: district.provinceId,
    );
  }

  District toDomain() {
    return District(
      id: id,
      name: name,
      provinceId: provinceId,
    );
  }
}
