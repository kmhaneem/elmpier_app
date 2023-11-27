import 'package:delivery/domain/order_item/order_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_item_dtos.freezed.dart';
part 'order_item_dtos.g.dart';

@freezed
class OrderItemDto with _$OrderItemDto {
  const OrderItemDto._();

  const factory OrderItemDto({
    required int id,
    @JsonKey(name: "order_id") required int orderId,
    @JsonKey(name: "product_id") required int productId,
    required String name,
    required int price,
    @JsonKey(name: "image_url") required String imageUrl,
    @JsonKey(name: "item_qty") required int itemQty,
    @JsonKey(name: "user_id") int? userId
  }) = _OrderItemDto;

  factory OrderItemDto.fromJson(Map<String, dynamic> json) =>
      _$OrderItemDtoFromJson(json);

  factory OrderItemDto.fromDomain(OrderItem orderItem) {
    return OrderItemDto(
      id: orderItem.id,
      orderId: orderItem.orderId,
      productId: orderItem.productId,
      name: orderItem.name,
      price: orderItem.price,
      imageUrl: orderItem.imageUrl,
      itemQty: orderItem.itemQty,
      userId: orderItem.userId
    );
  }

  OrderItem toDomain() {
    return OrderItem(
      id: id,
      orderId: orderId,
      productId: productId,
      name: name,
      price: price,
      imageUrl: imageUrl,
      itemQty: itemQty,
      userId: userId
    );
  }
}
