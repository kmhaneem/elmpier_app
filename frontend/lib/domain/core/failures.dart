import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({required T failedValue}) = _Empty<T>;
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = _ExceedingLength<T>;
  const factory ValueFailure.invalidImageType({required File failedValue}) =
      _InvalidImageType<T>;
  const factory ValueFailure.invalidId({required T failedValue}) =
      _InvalidId<T>;
  const factory ValueFailure.invalidQuantity({required T failedvalue}) =
      _InvalidQuantity<T>;
  const factory ValueFailure.exceedingPrice(
      {required T failedValue,
      required int min,
      required int max}) = _ExceedingPrice<T>;
  const factory ValueFailure.exceedingImages({
    required T failedValue,
    required int max,
  }) = _ExceedingImages<T>;

  const factory ValueFailure.invalidUrl({required T failedValue,}) =
      _InvalidUrl<T>;

  const factory ValueFailure.invalidEmail({required T failedValue}) =
      _InvalidEmail<T>;
  const factory ValueFailure.shortPassword({required T failedValue}) =
      _ShortPassword<T>;
  const factory ValueFailure.invalidPhone({required T failedValue}) =
      _InvalidPhone<T>;
  const factory ValueFailure.invalidOtp({required T failedValue}) =
      _InvalidOtp<T>;
  const factory ValueFailure.invalidName({required T failedValue}) =
      _InvalidName<T>;
}
