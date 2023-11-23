import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/domain/cart/model/cart.dart';
part 'cart_dtos.freezed.dart';
part 'cart_dtos.g.dart';

@freezed
class CartDto with _$CartDto {
  const CartDto._();

  const factory CartDto({
    @JsonKey(name: "product_id") required int productId,
    required String name,
    required int price,
    @JsonKey(name: "item_qty") required int itemQty,
    @JsonKey(name: "image_url") required String imageUrl,
  }) = _CartDto;

  factory CartDto.fromJson(Map<String, dynamic> json) =>
      _$CartDtoFromJson(json);

  factory CartDto.fromDomain(Cart cart) {
    return CartDto(
      productId: cart.productId,
      name: cart.name,
      price: cart.price,
      itemQty: cart.itemQty,
      imageUrl: cart.imageUrl,
    );
  }

  Cart toDomain() {
    return Cart(
      productId: productId,
      name: name,
      price: price,
      itemQty: itemQty,
      imageUrl: imageUrl,
    );
  }
}
