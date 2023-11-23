import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/provider.dart';

class UserPage extends ConsumerWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userNotifier = ref.read(userProvider.notifier);
    final userState = ref.watch(userProvider);

    final userId = 1;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("lib/assets/elmpier-logo.png", width: 130),
            ],
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Row(),
                ),
                userState.maybeWhen(
                  initial: () => Container(),
                  actionInProgress: () => CircularProgressIndicator(),
                  loaded: (users) => Column(
                    children: users.map((user) {
                      return Card(
                        elevation: 1,
                        margin: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        child: ListTile(
                          title: Text('${user.firstName} ${user.lastName}'),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Email: ${user.email}'),
                              Text('Phone: ${user.phone}'),
                              if (user.addressLine1 != null)
                                Text('Address: ${user.addressLine1}'),
                              if (user.addressLine2 != null)
                                Text('${user.addressLine2}'),
                              if (user.city != null) Text('${user.city}'),
                              if (user.district != null)
                                Text('${user.district}'),
                              if (user.province != null)
                                Text('${user.province}'),
                              if (user.postalCode != null)
                                Text('Postal Code: ${user.postalCode}'),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  actionFailure: (failure) => Text(failure.toString()),
                  orElse: () => Text("Error"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
