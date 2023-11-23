import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../shared/provider.dart';

class TransactionPage extends ConsumerWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionNotifier = ref.read(transactionProvider.notifier);
    final transactionState = ref.watch(transactionProvider);

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
                transactionState.when(
                  initial: () => Container(),
                  actionInProgress: () => CircularProgressIndicator(),
                  loaded: (transactions) => Column(
                    children: transactions.map((transaction) {
                      return Card(
                        elevation: 1,
                        margin: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        child: ListTile(
                          title: Text('Payment ID: ${transaction.paymentId}'),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('User ID: ${transaction.userId}'),
                              Text(
                                  'Payment Method: ${transaction.paymentMethod}'),
                              Text('Status: ${transaction.status}'),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  actionFailure: (failure) => Text(failure.toString()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
