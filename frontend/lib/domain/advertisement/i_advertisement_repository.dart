import 'package:dartz/dartz.dart';
import 'package:frontend/domain/advertisement/advertisement_failure.dart';
import 'package:frontend/domain/advertisement/model/advertisement.dart';

abstract class IAdvertisementRepository {
  Future<Either<AdvertisementFailure, List<Advertisement>>>
      getAllAdvertisement();
  Future<Either<AdvertisementFailure, List<Advertisement>>>
      getAllSearchAdvertisement(String query, int? userId);
}
