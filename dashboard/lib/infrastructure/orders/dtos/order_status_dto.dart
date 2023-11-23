import 'package:dashboard/domain/orders/order_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_status_dto.freezed.dart';
part 'order_status_dto.g.dart';

@freezed
class OrderStatusDto with _$OrderStatusDto {
  const OrderStatusDto._();

  const factory OrderStatusDto({
    required int id,
    @JsonKey(name: "status_name") required String statusName,
  }) = _OrderStatusDto;

  factory OrderStatusDto.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusDtoFromJson(json);

  factory OrderStatusDto.fromDomain(OrderStatus orderStatus) {
    return OrderStatusDto(
      id: orderStatus.id,
      statusName: orderStatus.statusName,
    );
  }

  OrderStatus toDomain() {
    return OrderStatus(
      id: id,
      statusName: statusName,
    );
  }
}
