import 'package:dartz/dartz.dart';
import 'package:delivery/application/profile/user_profile_state.dart';
import 'package:delivery/domain/auth/auth_failure.dart';
import 'package:delivery/domain/auth/i_auth_repository.dart';
import 'package:delivery/domain/profile/user_profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserProfileNotifier extends StateNotifier<UserProfileState> {
  final IAuthRepository _iUserRepository;
  UserProfileNotifier(this._iUserRepository)
      : super(const UserProfileState.initial()) {
    getUserProfileDetails();
  }

  Future<void> getUserProfileDetails() async {
    Either<AuthFailure, UserProfile> failureOrProfile;
    state = UserProfileState.actionInProgress();

    failureOrProfile = await _iUserRepository.getUserProfile();

    state = failureOrProfile.fold(
      (l) => UserProfileState.actionFailure(l),
      (r) => UserProfileState.success(r),
    );
  }
}
