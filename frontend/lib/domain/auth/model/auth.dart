import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/auth/value_objects.dart';

part 'auth.freezed.dart';

@freezed
abstract class Auth implements _$Auth {
  const Auth._();

  const factory Auth({
    required int id,
    required EmailAddress email,
    required PhoneNumber phone,
    required Password password,
    required OtpNumber otp,
    required String salt,
    required FirstName firstname,
    required LastName lastname,
    required String profile,
    required bool verified,
  }) = _Auth;

  factory Auth.fromDetails(
          {required EmailAddress email,
          required PhoneNumber phone,
          required Password password}) =>
      Auth(
        id: 0, 
        email: email,
        phone: phone,
        password: password,
        otp: OtpNumber(0), 
        salt: "", 
        firstname: FirstName(""),
        lastname: LastName(""), 
        profile: "", 
        verified: false, 
      );

  factory Auth.empty() => Auth(
        id: 0,
        email: EmailAddress(""),
        phone: PhoneNumber(""),
        password: Password(""),
        otp: OtpNumber(0),
        salt: "",
        firstname: FirstName(""),
        lastname: LastName(""),
        profile: "",
        verified: false,
      );
}
