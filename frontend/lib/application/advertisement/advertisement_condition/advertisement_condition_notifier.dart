import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/advertisement/advertisement_condition/advertisement_condition_state.dart';
import 'package:frontend/domain/advertisement/advertisement_failure.dart';
import 'package:frontend/domain/advertisement/i_advertisement_repository.dart';
import 'package:frontend/domain/advertisement/model/advertisement_condition.dart';

class AdvertisementConditionNotifier
    extends StateNotifier<AdvertisementConditionState> {
  final IAdvertisementRepository _iAdvertisementRepository;
  AdvertisementConditionNotifier(this._iAdvertisementRepository)
      : super(AdvertisementConditionState.initial());

  Future<void> getAllAdvertisementConditions() async {
    final Either<AdvertisementFailure, List<AdvertisementCondition>>
        failureOrCondition;

    state = const AdvertisementConditionState.loadInProgress();

    failureOrCondition =
        await _iAdvertisementRepository.getAllAdvertisementCondition();

    state = failureOrCondition.fold(
      (l) =>  AdvertisementConditionState.loadFailure(l),
      (r) => AdvertisementConditionState.loadSuccess(r),
    );
  }
}
