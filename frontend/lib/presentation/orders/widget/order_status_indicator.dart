import 'package:flutter/material.dart';
import 'package:frontend/presentation/orders/widget/order_steps.dart';

class OrderStatusIndicator extends StatelessWidget {
  final bool isPickup;
  final bool isWarehouse;
  final bool isDelivered;

  const OrderStatusIndicator({
    Key? key,
    required this.isPickup,
    required this.isWarehouse,
    required this.isDelivered,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          OrderStep(
            title: 'Order Received',
            isActive: true,
            iconData: Icons.receipt_long,
          ),
          OrderStep(
            title: 'Order Picked',
            isActive: isPickup,
            iconData: Icons.shopping_cart,
          ),
          OrderStep(
            title: 'Product In Warehouse',
            isActive: isWarehouse,
            iconData: Icons.store_mall_directory,
          ),
          OrderStep(
            title: 'Product Delivered',
            isActive: isDelivered,
            iconData: Icons.local_shipping,
          ),
        ],
      ),
    );
  }
}
