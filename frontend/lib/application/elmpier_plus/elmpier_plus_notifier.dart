import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/elmpier_plus/elmpier_plus_state.dart';
import 'package:frontend/domain/elmpier_plus/i_elmpier_plus_repository.dart';
import 'package:frontend/domain/elmpier_plus/model/plus_user.dart';

import '../../domain/elmpier_plus/elmpier_plus_error.dart';
import '../../domain/orders/model/orders.dart';

class ElmpierPlusNotifier extends StateNotifier<ElmpierPlusState> {
  final IElmpierPlusRepository _elmpierPlusRepository;
  ElmpierPlusNotifier(this._elmpierPlusRepository)
      : super(const ElmpierPlusState.initial()) {
    checkPlusUser();
  }

  Future<void> createElmpierPlus(Orders orders) async {
    state = ElmpierPlusState.actionInProgress();

    final failureOrElmpierPlus =
        await _elmpierPlusRepository.elmpierPlusCreate(orders);

    state = failureOrElmpierPlus.fold(
      (l) => ElmpierPlusState.actionFailure(l),
      (r) => const ElmpierPlusState.createSuccess(),
    );
  }

  Future<void> checkPlusUser() async {
    Either<ElmpierPlusError, PlusUser> failureOrPlusUser;

    state = const ElmpierPlusState.actionInProgress();

    failureOrPlusUser = await _elmpierPlusRepository.elmpierPlusCheck();

    state = failureOrPlusUser.fold(
      (l) => ElmpierPlusState.actionFailure(l),
      (r) => ElmpierPlusState.plusUserLoaded(r),
    );
  }
}
