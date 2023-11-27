import 'package:delivery/domain/profile/user_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_profile_dto.freezed.dart';
part 'user_profile_dto.g.dart';

@freezed
class UserProfileDto with _$UserProfileDto {
  const UserProfileDto._();

  const factory UserProfileDto(
      {required int id,
      required String name,
      required String email,
      required String province,
      required String district}) = _UserProfileDto;

  factory UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDtoFromJson(json);

  factory UserProfileDto.fromDomain(UserProfile profile) {
    return UserProfileDto(
      id: profile.id,
      name: profile.name,
      email: profile.email,
      province: profile.province,
      district: profile.district,
    );
  }

  UserProfile toDomain() {
    return UserProfile(
      id: id,
      name: name,
      email: email,
      province: province,
      district: district,
    );
  }
}
