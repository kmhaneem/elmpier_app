
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failures.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = _ServerError;
  const factory AuthFailure.unExpectedError() = _UnExpectedError;
  const factory AuthFailure.invalidEmailOrPassword() = _InvalidEmailOrPassword;
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  const factory AuthFailure.phoneNumberAlreadyInUse() =
      _PhoneNumberAlreadyInUse;
  const factory AuthFailure.invalidOtp() = _InvalidOtp;
}