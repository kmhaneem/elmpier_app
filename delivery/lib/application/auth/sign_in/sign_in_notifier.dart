import 'package:dartz/dartz.dart';
import 'package:delivery/application/auth/sign_in/sign_in_state.dart';
import 'package:delivery/domain/auth/auth_failure.dart';
import 'package:delivery/domain/auth/i_auth_repository.dart';
import 'package:delivery/domain/auth/model/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInNotifier extends StateNotifier<SignInState> {
  final IAuthRepository _iAuthRepository;
  SignInNotifier(this._iAuthRepository) : super(SignInState.initial());

  Future<void> signIn(Auth auth) async {
    final Either<AuthFailure, Unit> failureOrSignIn;

    state = SignInState.loadInProgress();

    failureOrSignIn = await _iAuthRepository.signIn(auth);

    state = failureOrSignIn.fold(
      (l) => SignInState.failure(l),
      (r) => SignInState.success(),
    );
  }

  Future<void> signOut() async {
    if (true) {
      await _iAuthRepository.signOut();
      state = SignInState.initial();
    }
  }

  void clearInputs() {
    state = SignInState.initial();
  }
}
