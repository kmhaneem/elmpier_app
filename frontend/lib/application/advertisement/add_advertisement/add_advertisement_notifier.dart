import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/advertisement/add_advertisement/add_advertisement_state.dart';
import 'package:frontend/domain/advertisement/advertisement_failure.dart';
import 'package:frontend/domain/advertisement/i_advertisement_repository.dart';
import 'package:frontend/domain/advertisement/model/advertisement.dart';
import 'package:image_picker/image_picker.dart';

class AddAdvertisementNotifier extends StateNotifier<AddAdvertisementState> {
  final IAdvertisementRepository _iAdvertisementRepository;
  AddAdvertisementNotifier(this._iAdvertisementRepository)
      : super(const AddAdvertisementState.initial());

  Future<void> createAdvertisement(
      Advertisement advertisement, List<XFile> images) async {
    Either<AdvertisementFailure, Unit> failureOrSuccess;

    state = const AddAdvertisementState.actionInProgress();
    failureOrSuccess = await _iAdvertisementRepository.create(advertisement, images);

    state = failureOrSuccess.fold(
      (failure) => AddAdvertisementState.actionFailure(failure),
      (_) => const AddAdvertisementState.createSuccess(),
    );
  }

  Future<void> updateAdvertisement(
      Advertisement advertisement, List<XFile> images) async {
    Either<AdvertisementFailure, Unit> failureOrSuccess;

    state = const AddAdvertisementState.actionInProgress();
    failureOrSuccess = await _iAdvertisementRepository.update(advertisement, images);

    state = failureOrSuccess.fold(
      (failure) => AddAdvertisementState.actionFailure(failure),
      (_) => const AddAdvertisementState.updateSuccess(),
    );
  }

  Future<void> deleteAdvertisement(int id) async {
    Either<AdvertisementFailure, Unit> failureOrSuccess;

    state = const AddAdvertisementState.actionInProgress();
    failureOrSuccess = await _iAdvertisementRepository.delete(id);

    state = failureOrSuccess.fold(
      (failure) => AddAdvertisementState.actionFailure(failure),
      (_) => const AddAdvertisementState.updateSuccess(),
    );
  }
}
