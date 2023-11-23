import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_status.freezed.dart';

@freezed
class OrderStatus with _$OrderStatus {
  const factory OrderStatus({
    required int id,
    required String name, 
    required String imageUrl,
    required bool isPickup,
    required bool isWarehouse,
    required bool isDelivered,
  }) = _OrderStatus;
}