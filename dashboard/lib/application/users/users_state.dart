import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/user/user.dart';
import '../../domain/user/user_failure.dart';
part 'users_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.actionInProgress() = _ActionInProgress;
  const factory UserState.loaded(List<User> user) = _Loaded;
  const factory UserState.actionFailure(UserFailure userFailure) =
      _ActionFailure;
  const factory UserState.normalUsersLoaded(List<User> user) =
      _NormalUsersLoaded;
  const factory UserState.plusUsersLoaded(List<User> user) = _PlusUsersLoaded;
}
