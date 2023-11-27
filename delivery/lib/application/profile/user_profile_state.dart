import 'package:delivery/domain/auth/auth_failure.dart';
import 'package:delivery/domain/profile/user_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_profile_state.freezed.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.actionInProgress() = _ActionInProgress;
  const factory UserProfileState.success(UserProfile profile) = _Success;
  const factory UserProfileState.actionFailure(AuthFailure failure) =
      _ActionFailure;
}
