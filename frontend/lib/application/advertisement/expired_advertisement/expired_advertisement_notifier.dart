import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/advertisement/expired_advertisement/expired_advertisement_state.dart';
import 'package:frontend/domain/advertisement/advertisement_failure.dart';
import 'package:frontend/domain/advertisement/i_advertisement_repository.dart';
import 'package:frontend/domain/advertisement/model/advertisement.dart';

class ExpiredAdvertisementNotifier
    extends StateNotifier<ExpiredAdvertisementState> {
  final IAdvertisementRepository _advertisementRepository;

  ExpiredAdvertisementNotifier(this._advertisementRepository)
      : super(const ExpiredAdvertisementState.initial()) {
    getAllActiveAdvertisements();
  }

  Future<void> getAllActiveAdvertisements() async {
    Either<AdvertisementFailure, List<Advertisement>> failureOrAdvertisement;
    state = const ExpiredAdvertisementState.loadInProgress();

    failureOrAdvertisement =
        await _advertisementRepository.getAllExpiredAdvertisement();

    state = failureOrAdvertisement.fold(
      (l) => ExpiredAdvertisementState.loadFailure(l),
      (r) => ExpiredAdvertisementState.loadSuccess(r),
    );
  }
}
