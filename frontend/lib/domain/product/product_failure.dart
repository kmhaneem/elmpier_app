import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_failure.freezed.dart';

@freezed
abstract class ProductFailure implements _$ProductFailure {
  const factory ProductFailure.unExpected() = _UnExpected;
  const factory ProductFailure.notFound() = _NotFound;
  const factory ProductFailure.serverError() = _ServerError;
}
