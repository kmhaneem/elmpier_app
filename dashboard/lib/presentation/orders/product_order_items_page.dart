import 'package:dashboard/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class ProductsOrderItemsPage extends ConsumerWidget {
  const ProductsOrderItemsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productOrdersState = ref.watch(productOrdersProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Orders'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: productOrdersState.maybeWhen(
          initial: () => Container(),
          loadInProgress: () => Center(child: CircularProgressIndicator()),
          loadProductOrderssSuccess: (products) => ListView.separated(
            itemCount: products.length,
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              final product = products[index];

              return ListTile(
                leading: CircleAvatar(
                  child: Text("${product.id}"),
                ),
                title: Row(
                  children: [
                    Text(
                      "${product.username} || ",
                      style: TextStyle(),
                    ),
                    Text(
                      "${product.statusName}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                  ],
                ),
                subtitle: Text(
                  "Rs. ${NumberFormat('#,##0').format(product.amount)}.00",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              );
            },
          ),
          loadFailure: (failure) => Center(child: Text(failure.toString())),
          orElse: () => Text("Failed"),
        ),
      ),
    );
  }
}
