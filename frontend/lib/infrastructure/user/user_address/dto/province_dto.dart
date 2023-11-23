import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/user/user_address/model/province.dart';
part 'province_dto.freezed.dart';
part 'province_dto.g.dart';

@freezed
class ProvinceDto with _$ProvinceDto {
  const ProvinceDto._();

  const factory ProvinceDto({
    required int id,
    required String name,
  }) = _ProvinceDto;

  factory ProvinceDto.fromJson(Map<String, dynamic> json) =>
      _$ProvinceDtoFromJson(json);

  factory ProvinceDto.fromDomain(Province province) {
    return ProvinceDto(
      id: province.id,
      name: province.name,
    );
  }

  Province toDomain() {
    return Province(
      id: id,
      name: name,
    );
  }
}
