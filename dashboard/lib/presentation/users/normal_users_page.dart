import 'package:dashboard/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class NormalUsersPage extends ConsumerWidget {
  const NormalUsersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final normalUsersState = ref.watch(normalUserProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Normal Users'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: normalUsersState.maybeWhen(
          initial: () => Container(),
          actionInProgress: () => Center(child: CircularProgressIndicator()),
          normalUsersLoaded: (products) => ListView.separated(
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
                      product.firstName!.isNotEmpty &&
                              product.lastName!.isNotEmpty
                          ? "${product.firstName} ${product.lastName}"
                          : "Unknown user",
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
          actionFailure: (failure) => Center(child: Text(failure.toString())),
          orElse: () => Text("Failed"),
        ),
      ),
    );
  }
}
