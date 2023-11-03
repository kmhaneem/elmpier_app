import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/advertisement/advertisement_state.dart';
import 'package:frontend/domain/advertisement/i_advertisement_repository.dart';

class AdvertisementNotifier extends StateNotifier<AdvertisementState> {
  final IAdvertisementRepository _advertisementRepository;
  bool _hasFetchedAdvertisements = false;

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

  @override
  void dispose() {
    super.dispose();
  }
}
