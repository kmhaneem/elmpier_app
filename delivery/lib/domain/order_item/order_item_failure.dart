import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_item_failure.freezed.dart';

@freezed
abstract class OrderItemFailure implements _$OrderItemFailure {
  const factory OrderItemFailure.unExpected() = _UnExpected;
  const factory OrderItemFailure.notFound() = _NotFound;
  const factory OrderItemFailure.serverError() = _ServerError;
}
