import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/user/model/user.dart';
import 'package:frontend/domain/user/user_failure.dart';
part 'user_profile_state.freezed.dart';



@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.actionInProgress() = _ActionInProgress;
  const factory UserProfileState.success() = _Success;
  const factory UserProfileState.actionFailure(UserFailure userFailure) =
      _ActionFailure;
  const factory UserProfileState.loaded(UserModel user) = _Loaded;
}
