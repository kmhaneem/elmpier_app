import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/orders/model/orders.dart';
part 'orders_dto.freezed.dart';
part 'orders_dto.g.dart';

@freezed
class OrderDto with _$OrderDto {
  const OrderDto._();

  const factory OrderDto({
    @JsonKey(name: "user_id") required int userId,
    @JsonKey(name: "payment_method") required String paymentMethod,
    required String status,
    @JsonKey(name: "payment_id") required String paymentId,
    @JsonKey(name: "status_id") required int statusId,
    required int amount,
  }) = _OrderDto;

  factory OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);

  factory OrderDto.fromDomain(Orders order) {
    return OrderDto(
      userId: order.userId,
      paymentMethod: order.paymentMethod,
      status: order.status,
      paymentId: order.paymentId,
      statusId: order.statusId,
      amount: order.amount,
    );
  }

  Orders toDomain() {
    return Orders(
      userId: userId,
      paymentMethod: paymentMethod,
      status: status,
      paymentId: paymentId,
      statusId: statusId,
      amount: amount,
    );
  }
}
