import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({required T failedValue}) = _Empty<T>;
  const factory ValueFailure.exceedingLength(
      {required T failedValue, required int max}) = _ExceedingLength<T>;
  const factory ValueFailure.invalidImageType({required T failedValue}) =
      _InvalidImageType<T>;
  const factory ValueFailure.invalidId({required T failedValue}) =
      _InvalidId<T>;
  const factory ValueFailure.invalidQuantity({required T failedvalue}) =
      _InvalidQuantity<T>;
  const factory ValueFailure.exceedingPrice(
      {required T failedValue,
      required int min,
      required int max}) = _ExceedingPrice<T>;
}
