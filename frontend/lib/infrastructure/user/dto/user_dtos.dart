import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/core/user.dart';
import 'package:frontend/domain/user/model/user.dart';
part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

// @JsonSerializable()
@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    required String email,
    required String phone,
    @JsonKey(name: "firstname") required String firstName,
    @JsonKey(name: "lastname") required String lastName,
    @JsonKey(name: "address_line_1") required String addressLine1,
    @JsonKey(name: "address_line_2") required String addressLine2,
    required String city,
    @JsonKey(name: "postal_code") required int postalCode,
    required String district,
    required String province,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromDomain(UserModel user) {
    return UserDto(
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
    );
  }

  UserModel toDomain() {
    return UserModel(
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
    );
  }
}
