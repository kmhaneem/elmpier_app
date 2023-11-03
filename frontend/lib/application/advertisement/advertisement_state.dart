
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/advertisement/advertisement_failure.dart';
import 'package:frontend/domain/advertisement/model/advertisement.dart';
part 'advertisement_state.freezed.dart';

@freezed
abstract class AdvertisementState with _$AdvertisementState {
  const factory AdvertisementState.initial() = _Initial;
  const factory AdvertisementState.loadInProgress() = _LoadInProgress;
  const factory AdvertisementState.loadSuccess(List<Advertisement> advertisement) = _LoadSuccess;
  const factory AdvertisementState.loadFailure(AdvertisementFailure advertisementFailure) =
      _LoadFailure;
}