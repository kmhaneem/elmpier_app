import 'package:dashboard/application/users/users_state.dart';
import 'package:dashboard/domain/user/i_user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserNotifier extends StateNotifier<UserState> {
  final IUserRepository _iUserRepository;
  UserNotifier(this._iUserRepository) : super(const UserState.initial());

  Future<void> getAllUsers() async {
    state = const UserState.actionInProgress();

    final userOrFailure = await _iUserRepository.getAllUsers();

    state = userOrFailure.fold(
      (failure) => UserState.actionFailure(failure),
      (users) => UserState.loaded(users),
    );
  }
}
