import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/orders/widget/order_status_indicator.dart';
import 'package:frontend/shared/providers.dart';

class OrderStatusPage extends ConsumerStatefulWidget {
  final int orderItemId;
  const OrderStatusPage({required this.orderItemId, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OrderStatusPageState();
}

class _OrderStatusPageState extends ConsumerState<OrderStatusPage> {
  late bool _isPickup;
  late bool _isWarehouse;
  late bool _isDelivered;
  String? _name;
  String? _imageUrl;

  @override
  void initState() {
    super.initState();
    _isPickup = false;
    _isWarehouse = false;
    _isDelivered = false;
    Future.delayed(Duration.zero, () {
      ref
          .watch(orderStatusProvider.notifier)
          .getOrderStatus(widget.orderItemId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final orderStatusState = ref.watch(orderStatusProvider);

    orderStatusState.maybeWhen(
      loadSuccess: (orderStatus) {
        _isPickup = orderStatus.isPickup;
        _isWarehouse = orderStatus.isWarehouse;
        _isDelivered = orderStatus.isDelivered;
        _name = orderStatus.name;
        _imageUrl = orderStatus.imageUrl;
        setState(() {});
      },
      orElse: () => {},
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Order Status"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "${_name ?? 'Loading...'}",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              _buildImage(_imageUrl),
              SizedBox(height: 20),
              OrderStatusIndicator(
                isPickup: _isPickup,
                isWarehouse: _isWarehouse,
                isDelivered: _isDelivered,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage(String? imageUrl) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(
            imageUrl ?? 'lib/assets/images/default-image.png',
          ),
          fit: BoxFit.cover,
        ),
        border: Border.all(color: Colors.grey.shade300),
      ),
    );
  }
}
