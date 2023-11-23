import 'package:freezed_annotation/freezed_annotation.dart';
part 'delivery_person_failure.freezed.dart';

@freezed
abstract class DeliveryPersonFailure implements _$DeliveryPersonFailure {
  const factory DeliveryPersonFailure.unExpected() = _UnExpected;
  const factory DeliveryPersonFailure.notFound() = _NotFound;
  const factory DeliveryPersonFailure.serverError() = _ServerError;
}
