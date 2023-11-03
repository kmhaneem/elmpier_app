import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/user/model/user.dart';
import 'package:frontend/domain/user/user_failure.dart';

import '../../domain/user/user_address/model/district.dart';
import '../../domain/user/user_address/model/province.dart';
part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.actionInProgress() = _ActionInProgress;
  const factory UserState.loaded(UserModel user) = _Loaded;
  const factory UserState.actionFailure(UserFailure userFailure) =
      _ActionFailure;
}
