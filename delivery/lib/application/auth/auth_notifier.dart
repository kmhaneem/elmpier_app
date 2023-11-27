import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/auth/i_auth_repository.dart';
import 'auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final IAuthRepository _iAuthRepository;
  AuthNotifier(this._iAuthRepository) : super(const AuthState.initial());

  void authCheckRequested() async {
    print("Checking authentication status...");
    final userOption = await _iAuthRepository.getSignedInUser();
    userOption.fold(
      () {
        state = const AuthState.unauthenticated();
      },
      (_) {
        state = const AuthState.authenticated();
      },
    );
  }
}
