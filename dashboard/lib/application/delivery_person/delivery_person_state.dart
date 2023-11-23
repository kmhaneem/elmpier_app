import 'package:dashboard/domain/delivery_person/delivery_person.dart';
import 'package:dashboard/domain/delivery_person/delivery_person_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'delivery_person_state.freezed.dart';

@freezed
abstract class DeliveryPersonState with _$DeliveryPersonState {
  const factory DeliveryPersonState.initial() = _Initial;
  const factory DeliveryPersonState.loadInProgress() = _LoadInProgress;
  const factory DeliveryPersonState.loadFailure(DeliveryPersonFailure failure) =
      _LoadFailure;

  const factory DeliveryPersonState.deliveryPersonLoaded(
      List<DeliveryPerson> delivery) = _DeliveryPersonLoaded;
}
