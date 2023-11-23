import 'package:dartz/dartz.dart';
import 'package:frontend/domain/advertisement/advertisement_failure.dart';
import 'package:frontend/domain/advertisement/model/advertisement.dart';
import 'package:frontend/domain/advertisement/model/advertisement_condition.dart';
import 'package:image_picker/image_picker.dart';

abstract class IAdvertisementRepository {
  Future<Either<AdvertisementFailure, List<Advertisement>>>
      getAllAdvertisement();
  Future<Either<AdvertisementFailure, List<Advertisement>>>
      getAllSearchAdvertisement(String query, int? userId);
  Future<Either<AdvertisementFailure, Unit>> create(
    Advertisement product,
    List<XFile> images,
  );
  Future<Either<AdvertisementFailure, Unit>> update(
    Advertisement advertisement,
    List<XFile> images,
  );
  Future<Either<AdvertisementFailure, Unit>> delete(int id);
  Future<Either<AdvertisementFailure, List<AdvertisementCondition>>>
      getAllAdvertisementCondition();
  Future<Either<AdvertisementFailure, List<Advertisement>>>
      getAllActiveAdvertisement();
  Future<Either<AdvertisementFailure, List<Advertisement>>>
      getAllExpiredAdvertisement();
}
