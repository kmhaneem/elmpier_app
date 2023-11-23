import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/auth/sign_in/sign_in_state.dart';
import 'package:frontend/domain/auth/i_auth_repository.dart';
import 'package:frontend/infrastructure/auth/dto/otp_dtos.dart';

import '../../../domain/auth/auth_failures.dart';
import '../../../domain/auth/value_objects.dart';
import '../../../infrastructure/auth/dto/sign_in_dtos.dart';
import '../../../infrastructure/auth/dto/sign_up_dtos.dart';

class SignInNotifier extends StateNotifier<SignInState> {
  final IAuthFacade _iAuthFacade;

  SignInNotifier(this._iAuthFacade) : super(SignInState.initial());

  void emailChanged(String emailStr) {
    state = state.copyWith(
      email: EmailAddress(emailStr),
      authFailureOrSuccessOption: none(),
    );
  }

  void passwordChanged(String passwordStr) {
    state = state.copyWith(
      password: Password(passwordStr),
      authFailureOrSuccessOption: none(),
    );
  }

  void phoneNumberChanged(String phoneNumberString) {
    state = state.copyWith(
      phone: PhoneNumber(phoneNumberString),
      authFailureOrSuccessOption: none(),
    );
  }

  void otpNumberChanged(int otpCodeInt) {
    state = state.copyWith(
      otp: OtpNumber(otpCodeInt),
      otpVerifyFailureOrSuccess: none(),
    );
  }

  Future<void> signUpButtonPressed() async {
    state = state.copyWith(isSubmitting: true, showErrorMessages: true);
    Either<AuthFailure, Unit> failureOrSuccess;
    final isEmailValid = state.email.isValid();
    final isPhoneValid = state.phone.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPhoneValid && isPasswordValid) {
      state = state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      SignUpDto signUpData = SignUpDto(
        email: state.email,
        phone: state.phone,
        password: state.password,
      );

      failureOrSuccess = await _iAuthFacade.signUpUser(signUpData);

      state = state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
        showErrorMessages: failureOrSuccess.isLeft(),
      );
    } else {
      state = state.copyWith(isSubmitting: false);
    }
  }

  Future<void> signInButtonPressed() async {
    state = state.copyWith(isSubmitting: true, showErrorMessages: true);
    Either<AuthFailure, Unit> failureOrSuccess;
    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      state = state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      SignInDto signInDto = SignInDto(
        email: state.email,
        password: state.password,
      );

      failureOrSuccess = await _iAuthFacade.signInUser(signInDto);

      state = state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
        showErrorMessages: failureOrSuccess.isLeft(),
      );
    } else {
      state = state.copyWith(isSubmitting: false);
    }
  }

  Future<void> verifyOtpButtonPressed() async {
    state = state.copyWith(isSubmitting: true, showErrorMessages: true);
    Either<AuthFailure, Unit> failureOrSuccess;
    final isValidateOtp = state.otp.isValid();
    if (isValidateOtp) {
      state = state.copyWith(
        isSubmitting: true,
        otpVerifyFailureOrSuccess: none(),
      );

      OtpDto otpDto = OtpDto(
        otp: state.otp,
      );

      failureOrSuccess = await _iAuthFacade.verifyOtp(otpDto);

      state = state.copyWith(
        isSubmitting: false,
        otpVerifyFailureOrSuccess: optionOf(failureOrSuccess),
        showErrorMessages: failureOrSuccess.isLeft(),
      );
    }
  }

  void signOut() async {
    state = state.copyWith(isSubmitting: true);
    if (true) {
      _iAuthFacade.signOut();
      state = SignInState.initial();
    }
  }

  void clearInputs() {
    state = SignInState.initial();
  }
}
