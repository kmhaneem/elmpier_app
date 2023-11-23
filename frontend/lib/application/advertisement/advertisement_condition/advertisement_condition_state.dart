import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/advertisement/advertisement_failure.dart';
import 'package:frontend/domain/advertisement/model/advertisement_condition.dart';

import '../../../domain/product/model/category.dart';
import '../../../domain/product/product_failure.dart';
part 'advertisement_condition_state.freezed.dart';

@freezed
abstract class AdvertisementConditionState with _$AdvertisementConditionState {
  const factory AdvertisementConditionState.initial() = _Initial;
  const factory AdvertisementConditionState.loadInProgress() = _LoadInProgress;
  const factory AdvertisementConditionState.loadSuccess(List<AdvertisementCondition> condition) = _LoadSuccess;
  const factory AdvertisementConditionState.loadFailure(AdvertisementFailure advertisementFailure) =
      _LoadFailure;
}