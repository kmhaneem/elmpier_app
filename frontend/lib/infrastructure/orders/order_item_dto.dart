import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/orders/model/order_item.dart';

part 'order_item_dto.freezed.dart';
part 'order_item_dto.g.dart';

// @JsonSerializable()
@freezed
class OrderItemDto with _$OrderItemDto {
  const OrderItemDto._();

  const factory OrderItemDto({
    @JsonKey(name: "order_id") required int orderId,
    @JsonKey(name: "product_id") required int productId,
    required String name,
    required int price,
    @JsonKey(name: "image_url") required String imageUrl,
    @JsonKey(name: "image_qty") required int itemQty,
  }) = _OrderItemDto;

  factory OrderItemDto.fromJson(Map<String, dynamic> json) =>
      _$OrderItemDtoFromJson(json);

  factory OrderItemDto.fromDomain(OrderItem item) {
    return OrderItemDto(
      orderId: item.orderId,
      productId: item.productId,
      name: item.name,
      price: item.price,
      imageUrl: item.imageUrl,
      itemQty: item.itemQty,
    );
  }

  OrderItem toDomain() {
    return OrderItem(
      orderId: orderId,
      productId: productId,
      name: name,
      price: price,
      imageUrl: imageUrl,
      itemQty: itemQty,
    );
  }
}