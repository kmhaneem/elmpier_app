import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/orders/model/order_status.dart';
part 'order_status_dtos.freezed.dart';
part 'order_status_dtos.g.dart';

@freezed
class OrderStatusDto with _$OrderStatusDto {
  const OrderStatusDto._();

  const factory OrderStatusDto({
    required int id,
    required String name,
    @JsonKey(name: "image_url") required String imageUrl,
    @JsonKey(name: "is_pickup") required bool isPickup,
    @JsonKey(name: "is_warehouse") required bool isWarehouse,
    @JsonKey(name: "is_delivered") required bool isDelivered,
  }) = _OrderStatusDto;

  factory OrderStatusDto.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusDtoFromJson(json);

  factory OrderStatusDto.fromDomain(OrderStatus orderStatus) {
    return OrderStatusDto(
      id: orderStatus.id,
      name: orderStatus.name,
      imageUrl: orderStatus.imageUrl,
      isPickup: orderStatus.isPickup,
      isWarehouse: orderStatus.isWarehouse,
      isDelivered: orderStatus.isDelivered,
    );
  }

  OrderStatus toDomain() {
    return OrderStatus(
      id: id,
      name: name,
      imageUrl: imageUrl,
      isPickup: isPickup,
      isWarehouse: isWarehouse,
      isDelivered: isDelivered,
    );
  }
}
