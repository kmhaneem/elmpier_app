
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/advertisement/advertisement_failure.dart';
import 'package:frontend/domain/advertisement/model/advertisement.dart';
part 'active_advertisment_state.freezed.dart';

@freezed
abstract class ActiveAdvertisementState with _$ActiveAdvertisementState {
  const factory ActiveAdvertisementState.initial() = _Initial;
  const factory ActiveAdvertisementState.loadInProgress() = _LoadInProgress;
  const factory ActiveAdvertisementState.loadSuccess(List<Advertisement> advertisement) = _LoadSuccess;
  const factory ActiveAdvertisementState.loadFailure(AdvertisementFailure advertisementFailure) =
      _LoadFailure;
}