import 'package:freezed_annotation/freezed_annotation.dart';
part 'orders_failure.freezed.dart';

@freezed
abstract class OrdersFailure implements _$OrdersFailure {
  const factory OrdersFailure.unExpected() = _UnExpected;
  const factory OrdersFailure.notFound() = _NotFound;
  const factory OrdersFailure.serverError() = _ServerError;
}
