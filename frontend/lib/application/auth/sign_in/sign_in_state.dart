import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/auth/value_objects.dart';

import '../../../domain/auth/auth_failures.dart';
part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required EmailAddress email,
    required PhoneNumber phone,
    required Password password,
    required OtpNumber otp,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    required Option<Either<AuthFailure, Unit>> otpVerifyFailureOrSuccess,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        email: EmailAddress(""),
        phone: PhoneNumber(""),
        password: Password(""),
        otp: OtpNumber(0),
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: none(),
        otpVerifyFailureOrSuccess: none(),
      );
}
