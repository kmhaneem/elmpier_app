import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/cart/cart_state.dart';
import 'package:frontend/application/user/user_state.dart';
import 'package:frontend/domain/user/i_user_repository.dart';
import 'package:frontend/domain/user/model/user.dart';
import 'package:frontend/domain/user/user_failure.dart';

class UserNotifier extends StateNotifier<UserState> {
  final IUserRepository _iUserRepository;

  UserNotifier(this._iUserRepository) : super(const UserState.initial()) {
    fetchUserDetails();
  }

  Future<void> fetchUserDetails() async {
    state = UserState.actionInProgress();

    final failureOrUser = await _iUserRepository.getUserProfile();

    state = failureOrUser.fold(
      (failure) => UserState.actionFailure(failure),
      (user) => UserState.loaded(user),
    );
  }

  void resetState() {
    state = const UserState.initial();
  }
}
