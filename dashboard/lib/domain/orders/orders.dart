import 'package:freezed_annotation/freezed_annotation.dart';
part 'orders.freezed.dart';

@freezed
abstract class Orders implements _$Orders {
  const Orders._();

  const factory Orders({
    required int id,
    required int userId,
    required int statusId,
    required int amount,
    required int transactionId,
    String? statusName,
    String? username
  }) = _Orders;
}