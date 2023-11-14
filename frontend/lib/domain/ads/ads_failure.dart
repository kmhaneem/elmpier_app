import 'package:freezed_annotation/freezed_annotation.dart';
part 'ads_failure.freezed.dart';

@freezed
abstract class AdsFailure implements _$AdsFailure {
  const factory AdsFailure.unExpected() = _UnExpected;
  const factory AdsFailure.notFound() = _NotFound;
  const factory AdsFailure.serverError() = _ServerError;
}
