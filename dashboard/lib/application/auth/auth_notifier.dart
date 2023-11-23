import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/auth/i_auth_repository.dart';
import 'auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final IAuthRepository _authRepository;
  AuthNotifier(this._authRepository) : super(const AuthState.initial());

  void authCheckRequested() async {
    print("Checking authentication status...");

    final adminOption = await _authRepository.getSignedInAdmin();

    adminOption.fold(
      () {
        print("Admin not found, transitioning to unauthenticated state.");
        state = const AuthState.unauthenticated();
      },
      (_) {
        print("Admin found, transitioning to authenticated state.");
        state = const AuthState.authenticated();
      },
    );
  }
}
