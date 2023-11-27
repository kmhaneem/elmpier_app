import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_failures.freezed.dart';

@freezed
class ProductFailure with _$ProductFailure {
  const ProductFailure._();
  const factory ProductFailure.unExpected() = _UnExpected;
  const factory ProductFailure.notFound() = _NotFound;
  const factory ProductFailure.serverError() = _ServerError;
}