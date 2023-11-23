import 'package:freezed_annotation/freezed_annotation.dart';
part 'advertisement_failure.freezed.dart';

@freezed
abstract class AdvertisementFailure implements _$AdvertisementFailure {
  const factory AdvertisementFailure.unExpected() = _UnExpected;
  const factory AdvertisementFailure.notFound() = _NotFound;
  const factory AdvertisementFailure.serverError() = _ServerError;
}
