import 'package:dartz/dartz.dart';
import 'package:dashboard/application/auth/sign_in/sign_in_state.dart';
import 'package:dashboard/domain/auth/auth.dart';
import 'package:dashboard/domain/auth/auth_failure.dart';
import 'package:dashboard/domain/auth/i_auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInNotifier extends StateNotifier<SignInState> {
  final IAuthRepository _authRepository;
  SignInNotifier(this._authRepository) : super(const SignInState.initial());

  Future<void> signIn(Auth auth) async {
    Either<AuthFailure, Unit> failureOrSignIn;
    state = const SignInState.signInProcess();

    failureOrSignIn = await _authRepository.signIn(auth);

    state = failureOrSignIn.fold(
      (failure) => const SignInState.signInFailure(),
      (r) => const SignInState.signInSuccess(),
    );
  }

  Future<void> signOut() async {
    // state = state.copyWith(isSubmitting: true);
    if (true) {
      await _authRepository.signOut();
      state = const SignInState.initial();
    }
  }

  void clearInputs() {
    state = SignInState.initial();
  }
}
