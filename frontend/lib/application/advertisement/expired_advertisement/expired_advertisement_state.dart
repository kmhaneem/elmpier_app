
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/advertisement/advertisement_failure.dart';
import 'package:frontend/domain/advertisement/model/advertisement.dart';
part 'expired_advertisement_state.freezed.dart';

@freezed
abstract class ExpiredAdvertisementState with _$ExpiredAdvertisementState {
  const factory ExpiredAdvertisementState.initial() = _Initial;
  const factory ExpiredAdvertisementState.loadInProgress() = _LoadInProgress;
  const factory ExpiredAdvertisementState.loadSuccess(List<Advertisement> advertisement) = _LoadSuccess;
  const factory ExpiredAdvertisementState.loadFailure(AdvertisementFailure advertisementFailure) =
      _LoadFailure;
}