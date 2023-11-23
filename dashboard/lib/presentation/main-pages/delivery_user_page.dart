import 'package:dashboard/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class DeliveryUserPage extends ConsumerWidget {
  const DeliveryUserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deliveryPersonState = ref.watch(deliveryPersonProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('All Users'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: deliveryPersonState.maybeWhen(
          initial: () => Container(),
          loadInProgress: () => Center(child: CircularProgressIndicator()),
          deliveryPersonLoaded: (products) => ListView.separated(
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
                      product.name!,
                      style: TextStyle(),
                    )
                  ],
                ),
                subtitle: Text(
                  "${product.email}",
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
