import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:delivery/infrastructure/order_item/order_item_repository.dart';
import 'package:delivery/presentation/app_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(child: const AppWidget()),
  );
}

void fetchOrderItems() async {
  Dio dio = Dio();

  var orderItemRepository = OrderItemRepository(dio);
  var response = await orderItemRepository.getAllOrderItems();

  response.fold(
    (failure) => print('Error: $failure'),
    (orderItems) => print('Order Items: $orderItems'),
  );
}
