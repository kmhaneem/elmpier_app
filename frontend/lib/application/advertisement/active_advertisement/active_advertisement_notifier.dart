import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/advertisement/active_advertisement/active_advertisment_state.dart';
import 'package:frontend/domain/advertisement/advertisement_failure.dart';
import 'package:frontend/domain/advertisement/i_advertisement_repository.dart';
import 'package:frontend/domain/advertisement/model/advertisement.dart';

class ActiveAdvertisementNotifier
    extends StateNotifier<ActiveAdvertisementState> {
  final IAdvertisementRepository _advertisementRepository;

  ActiveAdvertisementNotifier(this._advertisementRepository)
      : super(const ActiveAdvertisementState.initial()) {
    getAllActiveAdvertisements();
  }

  Future<void> getAllActiveAdvertisements() async {
    Either<AdvertisementFailure, List<Advertisement>> failureOrAdvertisement;
    state = const ActiveAdvertisementState.loadInProgress();

    failureOrAdvertisement =
        await _advertisementRepository.getAllActiveAdvertisement();

    state = failureOrAdvertisement.fold(
      (l) => ActiveAdvertisementState.loadFailure(l),
      (r) => ActiveAdvertisementState.loadSuccess(r),
    );
  }
}
