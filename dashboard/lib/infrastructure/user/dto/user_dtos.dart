import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/user/user.dart';
part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    required int id,
    required String email,
    required String phone,
    @JsonKey(name: "firstname") String? firstName,
    @JsonKey(name: "lastname") String? lastName,
    @JsonKey(name: "address_line_1") String? addressLine1,
    @JsonKey(name: "address_line_2") String? addressLine2,
    String? city,
    @JsonKey(name: "postal_code") int? postalCode,
    String? district,
    String? province,
    bool? verified,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id,
      email: user.email,
      phone: user.phone,
      firstName: user.firstName,
      lastName: user.lastName,
      addressLine1: user.addressLine1,
      addressLine2: user.addressLine2,
      city: user.city,
      postalCode: user.postalCode,
      district: user.district,
      province: user.province,
      verified: user.verified,
    );
  }

  User toDomain() {
    return User(
      id: id,
      email: email,
      phone: phone,
      firstName: firstName,
      lastName: lastName,
      addressLine1: addressLine1,
      addressLine2: addressLine2,
      city: city,
      postalCode: postalCode,
      district: district,
      province: province,
      verified: verified,
    );
  }
}
