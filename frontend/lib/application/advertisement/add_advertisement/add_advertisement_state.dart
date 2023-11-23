import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/advertisement/advertisement_failure.dart';
part 'add_advertisement_state.freezed.dart';

@freezed
abstract class AddAdvertisementState with _$AddAdvertisementState {
  const factory AddAdvertisementState.initial() = _Initial;
  const factory AddAdvertisementState.actionInProgress() = _ActionInProgress;
  const factory AddAdvertisementState.createSuccess() = _CreateSuccess;
  const factory AddAdvertisementState.updateSuccess() = _UpdateSuccess;
  const factory AddAdvertisementState.actionFailure(AdvertisementFailure productFailure) =
      _ActionFailure;
}
