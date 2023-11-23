import 'package:dashboard/domain/advertisement/advertisement.dart';
import 'package:dashboard/domain/advertisement/advertisement_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'advertisement_state.freezed.dart';

@freezed
abstract class AdvertisementState with _$AdvertisementState {
  const factory AdvertisementState.initial() = _Initial;
  const factory AdvertisementState.loadInProgress() = _LoadInProgress;
  const factory AdvertisementState.loadFailure(
      AdvertisementFailure advertisementFailure) = _LoadFailure;

  const factory AdvertisementState.loadAllAdvertisementsSuccess(
      List<Advertisement> advertisement) = _LoadAllAdvertisementsSuccess;
  const factory AdvertisementState.loadApprovedAdvertisementsSuccess(
      List<Advertisement> advertisement) = _LoadApprovedAdvertisementsSuccess;
  const factory AdvertisementState.loadPendingAdvertisementsSuccess(
      List<Advertisement> advertisement) = _LoadPendingAdvertisementsSuccess;
  const factory AdvertisementState.loadRejectedAdvertisementsSuccess(
      List<Advertisement> advertisement) = _LoadRejectedAdvertisementsSuccess;

  const factory AdvertisementState.approveUpdated() = _ApproveUpdated;
  const factory AdvertisementState.rejectUpdated() = _RejectUpdated;
}
