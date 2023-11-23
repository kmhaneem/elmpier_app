import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/ads/ads_state.dart';
import 'package:frontend/domain/ads/ads_failure.dart';
import 'package:frontend/domain/ads/i_ads_repository.dart';
import 'package:frontend/domain/product/model/product.dart';


class TopAdsNotifier extends StateNotifier<AdsState> {
  final IAdsRepository _adsRepository;
  TopAdsNotifier(this._adsRepository) : super(const AdsState.initial()) {
    getProductTopAds();
  }

  Future<void> getProductTopAds() async {
    Either<AdsFailure, List<Product>> failureOrAds;
    state = const AdsState.actionInProgress();

    failureOrAds = await _adsRepository.getProductTopAds();

    state = failureOrAds.fold((l) => AdsState.actionFailure(l),
        (product) => AdsState.topAdsloaded(product));
  }
}
