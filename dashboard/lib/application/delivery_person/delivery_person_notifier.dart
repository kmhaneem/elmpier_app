import 'package:dartz/dartz.dart';
import 'package:dashboard/application/delivery_person/delivery_person_state.dart';
import 'package:dashboard/domain/delivery_person/delivery_person.dart';
import 'package:dashboard/domain/delivery_person/delivery_person_failure.dart';
import 'package:dashboard/domain/delivery_person/i_delivery_person.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeliveryPersonNotifier extends StateNotifier<DeliveryPersonState> {
  final IDeliveryPerson _iDeliveryPerson;

  DeliveryPersonNotifier(this._iDeliveryPerson)
      : super(DeliveryPersonState.initial()) {
    getDeliveryPerson();
  }

  Future<void> getDeliveryPerson() async {
    final Either<DeliveryPersonFailure, List<DeliveryPerson>>
        failureOrDeliveryPerson;
    state = const DeliveryPersonState.loadInProgress();

    failureOrDeliveryPerson = await _iDeliveryPerson.getAllDeliveryPerson();

    state = failureOrDeliveryPerson.fold(
      (l) => DeliveryPersonState.loadFailure(l),
      (r) => DeliveryPersonState.deliveryPersonLoaded(r),
    );
  }
}
