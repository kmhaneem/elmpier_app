
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart.freezed.dart';

@freezed
abstract class Cart with _$Cart {
  const factory Cart({
    required int productId,
    required String name,
    required int price,
    required int itemQty,
    required String imageUrl
  }) = _Cart;
}