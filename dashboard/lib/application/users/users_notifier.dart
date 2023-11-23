import 'package:dartz/dartz.dart';
import 'package:dashboard/application/users/users_state.dart';
import 'package:dashboard/domain/user/i_user_repository.dart';
import 'package:dashboard/domain/user/user.dart';
import 'package:dashboard/domain/user/user_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserNotifier extends StateNotifier<UserState> {
  final IUserRepository _iUserRepository;
  UserNotifier(this._iUserRepository) : super(const UserState.initial()) {
    getAllUsers();
  }

  Future<void> getAllUsers() async {
    final Either<UserFailure, List<User>> userOrFailure;
    state = const UserState.actionInProgress();

    userOrFailure = await _iUserRepository.getAllUsers();

    state = userOrFailure.fold(
      (failure) => UserState.actionFailure(failure),
      (users) => UserState.loaded(users),
    );
  }
}
