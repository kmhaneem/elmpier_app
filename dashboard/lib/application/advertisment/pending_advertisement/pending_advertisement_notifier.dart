import 'package:dartz/dartz.dart';
import 'package:dashboard/application/advertisment/advertisement_state.dart';
import 'package:dashboard/domain/advertisement/advertisement.dart';
import 'package:dashboard/domain/advertisement/advertisement_failure.dart';
import 'package:dashboard/domain/advertisement/i_advertisement_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PendingAdvertisementNotifier extends StateNotifier<AdvertisementState> {
  final IAdvertisementRepository _iAdvertisementRepository;
  PendingAdvertisementNotifier(this._iAdvertisementRepository)
      : super(AdvertisementState.initial()) {
    getPendingAdvertisements();
  }

  Future<void> getPendingAdvertisements() async {
    final Either<AdvertisementFailure, List<Advertisement>>
        failureOrAdvertisement;

    state = const AdvertisementState.loadInProgress();

    failureOrAdvertisement =
        await _iAdvertisementRepository.getPendingAdvertisements();

    state = failureOrAdvertisement.fold(
      (l) => AdvertisementState.loadFailure(l),
      (r) => AdvertisementState.loadPendingAdvertisementsSuccess(r),
    );
  }
}
