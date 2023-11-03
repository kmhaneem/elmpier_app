import 'package:freezed_annotation/freezed_annotation.dart';
part 'orders.freezed.dart';

@freezed
abstract class Orders with _$Orders {
  const factory Orders({
    required int userId,
    required String paymentMethod,
    required String status,
    required String paymentId,
    required int statusId,
    required int amount,
  }) = _Orders;
}
