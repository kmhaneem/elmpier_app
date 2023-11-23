import 'package:dashboard/domain/orders/orders.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'orders_dto.freezed.dart';
part 'orders_dto.g.dart';

@freezed
abstract class OrdersDto implements _$OrdersDto {
  const OrdersDto._();

  const factory OrdersDto({
    required int id,
    @JsonKey(name: "user_id") required int userId,
    @JsonKey(name: "status_id") required int statusId,
    required int amount,
    @JsonKey(name: "transaction_id") required int transactionId,
    @JsonKey(name: "status_name") String? statusName,
    String? username,
  }) = _OrdersDto;

  factory OrdersDto.fromJson(Map<String, dynamic> json) =>
      _$OrdersDtoFromJson(json);

  factory OrdersDto.fromDomain(Orders orders) {
    return OrdersDto(
      id: orders.id,
      userId: orders.userId,
      statusId: orders.statusId,
      amount: orders.amount,
      transactionId: orders.transactionId,
      statusName: orders.statusName,
      username: orders.username,
    );
  }

  Orders toDomain() {
    return Orders(
      id: id,
      userId: userId,
      statusId: statusId,
      amount: amount,
      transactionId: transactionId,
      statusName: statusName,
      username: username,
    );
  }
}
