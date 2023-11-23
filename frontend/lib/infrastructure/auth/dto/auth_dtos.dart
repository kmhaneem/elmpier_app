import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/auth/value_objects.dart';

import '../../../domain/auth/model/auth.dart';
part 'auth_dtos.freezed.dart';
part 'auth_dtos.g.dart';

@freezed
class AuthDto with _$AuthDto {
  const AuthDto._();

  const factory AuthDto({
    required int id,
    required String email,
    required String phone,
    required String password,
    required int otp,
    required String salt,
    required String firstname,
    required String lastname,
    required String profile,
    required bool verified,
  }) = _AuthDto;

  factory AuthDto.fromJson(Map<String, dynamic> json) =>
      _$AuthDtoFromJson(json);

  factory AuthDto.fromDomain(Auth auth) {
    return AuthDto(
      id: auth.id,
      email: auth.email.getOrCrash(),
      phone: auth.phone.getOrCrash(),
      password: auth.password.getOrCrash(),
      otp: auth.otp.getOrCrash(),
      salt: auth.salt,
      firstname: auth.firstname.getOrCrash(),
      lastname: auth.lastname.getOrCrash(),
      profile: auth.profile,
      verified: auth.verified,
    );
  }

  Auth toDomain() {
    return Auth(
      id: id,
      email: EmailAddress(email),
      phone: PhoneNumber(phone),
      password: Password(password),
      otp: OtpNumber(otp),
      salt: salt,
      firstname: FirstName(firstname),
      lastname: LastName(lastname),
      profile: profile,
      verified: verified,
    );
  }
}
