import 'package:dartz/dartz.dart';
import 'package:dashboard/domain/advertisement/advertisement.dart';
import 'package:dashboard/domain/advertisement/advertisement_failure.dart';

abstract class IAdvertisementRepository {
  Future<Either<AdvertisementFailure, List<Advertisement>>> getAllAdvertisements();
  Future<Either<AdvertisementFailure, List<Advertisement>>> getApprovedAdvertisements();
  Future<Either<AdvertisementFailure, List<Advertisement>>> getPendingAdvertisements();
  Future<Either<AdvertisementFailure, List<Advertisement>>> getRejectedAdvertisements();
  Future<Either<AdvertisementFailure, Unit>> approveAdvertisement(int id);
  Future<Either<AdvertisementFailure, Unit>> rejectAdvertisement(int id);

}
