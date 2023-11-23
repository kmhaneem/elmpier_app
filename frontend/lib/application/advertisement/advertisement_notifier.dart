import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/advertisement/advertisement_state.dart';
import 'package:frontend/domain/advertisement/i_advertisement_repository.dart';

class AdvertisementNotifier extends StateNotifier<AdvertisementState> {
  final IAdvertisementRepository _advertisementRepository;
  bool _hasFetchedAdvertisements = false;
  bool _hasFetchedSearchedAdvertisements = false;
  bool _hasFetchActive = false;
  bool _hasFetchExpired = false;

  AdvertisementNotifier(this._advertisementRepository)
      : super(const AdvertisementState.initial());

  Future<void> getAllAdvertisements() async {
    if (_hasFetchedAdvertisements) return;

    state = const AdvertisementState.loadInProgress();

    final failureOrAdvertisement =
        await _advertisementRepository.getAllAdvertisement();

    state = failureOrAdvertisement.fold(
      (l) => AdvertisementState.loadFailure(l),
      (r) => AdvertisementState.loadSuccess(r),
    );

    _hasFetchedAdvertisements = true;
  }

  Future<void> getAllActiveAdvertisements() async {
    if (_hasFetchActive) return;

    state = const AdvertisementState.loadInProgress();

    final failureOrAdvertisement =
        await _advertisementRepository.getAllActiveAdvertisement();

    state = failureOrAdvertisement.fold(
      (l) => AdvertisementState.loadFailure(l),
      (r) => AdvertisementState.activeLoaded(r),
    );

    _hasFetchActive = true;
  }

  Future<void> getAllExpiredAdvertisements() async {
    if (_hasFetchExpired) return;

    state = const AdvertisementState.loadInProgress();

    final failureOrAdvertisement =
        await _advertisementRepository.getAllExpiredAdvertisement();

    state = failureOrAdvertisement.fold(
      (l) => AdvertisementState.loadFailure(l),
      (r) => AdvertisementState.expiredLoaded(r),
    );

    _hasFetchExpired = true;
  }

  Future<void> getSearchedAdvertisement(String query, int? userId) async {
    state = const AdvertisementState.loadInProgress();

    final failureOrAdvertisement =
        await _advertisementRepository.getAllSearchAdvertisement(query, userId);

    state = failureOrAdvertisement.fold(
      (failure) => AdvertisementState.loadFailure(failure),
      (advertisements) => AdvertisementState.searchLoaded(advertisements),
    );
  }

  @override
  void dispose() {
    super.dispose();

  }
}
