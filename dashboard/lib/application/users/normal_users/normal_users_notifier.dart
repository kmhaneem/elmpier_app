import 'package:dartz/dartz.dart';
import 'package:dashboard/application/users/users_state.dart';
import 'package:dashboard/domain/user/i_user_repository.dart';
import 'package:dashboard/domain/user/user.dart';
import 'package:dashboard/domain/user/user_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NormalUsersNotifier extends StateNotifier<UserState> {
  final IUserRepository _iUserRepository;
  NormalUsersNotifier(this._iUserRepository) : super(const UserState.initial()) {
    getNormalUsers();
  }

  Future<void> getNormalUsers() async {
    final Either<UserFailure, List<User>> userOrFailure;
    state = const UserState.actionInProgress();

    userOrFailure = await _iUserRepository.getNormalUsers();

    state = userOrFailure.fold(
      (failure) => UserState.actionFailure(failure),
      (users) => UserState.normalUsersLoaded(users),
    );
  }
}
