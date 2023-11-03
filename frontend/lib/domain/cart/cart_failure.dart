import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_failure.freezed.dart';

@freezed
abstract class CartFailure implements _$CartFailure {
    const factory CartFailure.unExpected() = _UnExpected;
  const factory CartFailure.notFound() = _NotFound;
  const factory CartFailure.serverError() = _ServerError;
}
