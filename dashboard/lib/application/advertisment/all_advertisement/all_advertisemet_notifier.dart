import 'package:dartz/dartz.dart';
import 'package:dashboard/application/advertisment/advertisement_state.dart';
import 'package:dashboard/domain/advertisement/advertisement.dart';
import 'package:dashboard/domain/advertisement/advertisement_failure.dart';
import 'package:dashboard/domain/advertisement/i_advertisement_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AllAdvertisementNotifier extends StateNotifier<AdvertisementState> {
  final IAdvertisementRepository _iAdvertisementRepository;
  AllAdvertisementNotifier(this._iAdvertisementRepository)
      : super(AdvertisementState.initial()) {
    getApprovedAdvertisements();
  }

  Future<void> getApprovedAdvertisements() async {
    final Either<AdvertisementFailure, List<Advertisement>>
        failureOrAdvertisement;

    state = const AdvertisementState.loadInProgress();

    failureOrAdvertisement =
        await _iAdvertisementRepository.getAllAdvertisements();

    state = failureOrAdvertisement.fold(
      (l) => AdvertisementState.loadFailure(l),
      (r) => AdvertisementState.loadAllAdvertisementsSuccess(r),
    );
  }

  Future<void> approveAdvertisementUpdated(int id) async {
    final Either<AdvertisementFailure, Unit> failureOrAdvertisement;

    state = const AdvertisementState.loadInProgress();

    failureOrAdvertisement = await _iAdvertisementRepository.approveAdvertisement(id);

    state = failureOrAdvertisement.fold(
      (l) => AdvertisementState.loadFailure(l),
      (r) => AdvertisementState.approveUpdated(),
    );
  }

  Future<void> rejectAdvertisementUpdated(int id) async {
    final Either<AdvertisementFailure, Unit> failureOrAdvertisement;

    state = const AdvertisementState.loadInProgress();

    failureOrAdvertisement = await _iAdvertisementRepository.rejectAdvertisement(id);

    state = failureOrAdvertisement.fold(
      (l) => AdvertisementState.loadFailure(l),
      (r) => AdvertisementState.rejectUpdated(),
    );
  }
}
