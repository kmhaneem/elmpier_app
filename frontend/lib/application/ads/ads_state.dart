import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/ads/ads_failure.dart';
import 'package:frontend/domain/product/model/product.dart';
part 'ads_state.freezed.dart';

@freezed
class AdsState with _$AdsState {
  const factory AdsState.initial() = _Initial;
  const factory AdsState.actionInProgress() = _ActionInProgress;
  const factory AdsState.createSuccess() = _CreateSuccess;
  const factory AdsState.actionFailure(AdsFailure adsFailure) = _ActionFailure;
  const factory AdsState.loaded(Product product) = _Loaded;
}
