import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/user/profile/user_profile_state.dart';
import 'package:frontend/domain/user/i_user_repository.dart';

import '../../../domain/user/model/user.dart';
import '../user_notifier.dart';

class UserProfileNotifier extends StateNotifier<UserProfileState> {
  final IUserRepository _iUserRepository;
  final UserNotifier userNotifier;
  UserProfileNotifier(this._iUserRepository, this.userNotifier)
      : super(const UserProfileState.initial());

  Future<void> fetchUserDetails() async {
    state = const UserProfileState.actionInProgress();

    final failureOrUser = await _iUserRepository.getUserProfile();

    state = failureOrUser.fold(
      (failure) => UserProfileState.actionFailure(failure),
      (user) => UserProfileState.loaded(user),
    );
  }

  Future<void> updateUserDetails(UserModel user) async {
    state = const UserProfileState.actionInProgress();
    final failureOrUser = await _iUserRepository.updateUserProfile(user);

    state = failureOrUser.fold(
      (failure) => UserProfileState.actionFailure(failure),
      (user) {
        fetchUserDetails();
        return const UserProfileState.success();
      },
    );
  }
}

class UserProfileNotifierX extends StateNotifier<UserProfileState> {
  final IUserRepository _iUserRepository;
  UserProfileNotifierX(this._iUserRepository)
      : super(const UserProfileState.initial()) {
    fetchUserDetails();
  }

  Future<void> fetchUserDetails() async {
    state = const UserProfileState.actionInProgress();

    final failureOrUser = await _iUserRepository.getUserProfile();

    state = failureOrUser.fold(
      (failure) => UserProfileState.actionFailure(failure),
      (user) => UserProfileState.loaded(user),
    );
  }

  Future<void> updateUserDetails(UserModel user) async {
    state = const UserProfileState.actionInProgress();
    final failureOrUser = await _iUserRepository.updateUserProfile(user);

    state = failureOrUser.fold(
      (failure) => UserProfileState.actionFailure(failure),
      (user) {
        fetchUserDetails();
        return const UserProfileState.success();
      },
    );
  }
}
