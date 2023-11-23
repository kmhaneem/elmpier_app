import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_item.freezed.dart';

@freezed
abstract class OrderItem with _$OrderItem {
  const factory OrderItem({
    required int id,
    required int orderId,
    required int productId,
    required String name,
    required int price,
    required String imageUrl,
    required int itemQty
  }) = _OrderItem;
}
