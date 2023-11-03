import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/auth/i_auth_repository.dart';
import 'auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final IAuthFacade _authFacade;
  AuthNotifier(this._authFacade) : super(const AuthState.initial());

  void authCheckRequested() async {
    print("Checking authentication status...");
    final userOption = await _authFacade.getSignedInUser();
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
