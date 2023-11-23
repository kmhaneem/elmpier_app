
import 'package:freezed_annotation/freezed_annotation.dart';
part 'advertisement_condition.freezed.dart';

@freezed
class AdvertisementCondition with _$AdvertisementCondition{
  const factory AdvertisementCondition({
    required int id,
    required String name
  }) = _AdvertisementCondition;
}