import 'package:dartz/dartz.dart';
import 'package:dashboard/domain/delivery_person/delivery_person.dart';
import 'package:dashboard/domain/delivery_person/delivery_person_failure.dart';

abstract class IDeliveryPerson {
  Future<Either<DeliveryPersonFailure, List<DeliveryPerson>>> getAllDeliveryPerson();
}