import 'package:dartz/dartz.dart';
import 'package:dashboard/application/advertisment/advertisement_state.dart';
import 'package:dashboard/domain/advertisement/advertisement.dart';
import 'package:dashboard/domain/advertisement/advertisement_failure.dart';
import 'package:dashboard/domain/advertisement/i_advertisement_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RejectedAdvertisementNotifier extends StateNotifier<AdvertisementState> {
  final IAdvertisementRepository _iAdvertisementRepository;
  RejectedAdvertisementNotifier(this._iAdvertisementRepository)
      : super(AdvertisementState.initial()) {
    getRejectedAdvertisements();
  }

  Future<void> getRejectedAdvertisements() async {
    final Either<AdvertisementFailure, List<Advertisement>>
        failureOrAdvertisement;

    state = const AdvertisementState.loadInProgress();

    failureOrAdvertisement =
        await _iAdvertisementRepository.getRejectedAdvertisements();

    state = failureOrAdvertisement.fold(
      (l) => AdvertisementState.loadFailure(l),
      (r) => AdvertisementState.loadRejectedAdvertisementsSuccess(r),
    );
  }
}
