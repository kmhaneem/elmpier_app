import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/ads/ads_state.dart';
import 'package:frontend/domain/ads/ads_failure.dart';
import 'package:frontend/domain/ads/i_ads_repository.dart';
import 'package:frontend/domain/product/model/product.dart';

import '../../domain/orders/model/orders.dart';

class AdsNotifier extends StateNotifier<AdsState> {
  final IAdsRepository _adsRepository;
  AdsNotifier(this._adsRepository) : super(const AdsState.initial()) {
    getProductPopAds();
  }

  Future<void> makeProductTopAds(int id, Orders order) async {
    Either<AdsFailure, Unit> failureOrAds;
    state = const AdsState.actionInProgress();

    failureOrAds = await _adsRepository.makeProductTopAds(id, order);

    state = failureOrAds.fold(
      (l) => AdsState.actionFailure(l),
      (r) => const AdsState.createSuccess(),
    );
  }

  Future<void> makeProductPopAds(int id, Orders order) async {
    Either<AdsFailure, Unit> failureOrAds;
    state = const AdsState.actionInProgress();

    failureOrAds = await _adsRepository.makeProductPopAds(id, order);

    state = failureOrAds.fold(
      (l) => AdsState.actionFailure(l),
      (r) => const AdsState.createSuccess(),
    );
  }

  Future<void> getProductPopAds() async {
    Either<AdsFailure, Product> failureOrAds;
    state = const AdsState.actionInProgress();

    failureOrAds = await _adsRepository.getProductPopAds();

    state = failureOrAds.fold(
      (l) => AdsState.actionFailure(l),
      (product) => AdsState.loaded(product),
    );
  }
}
