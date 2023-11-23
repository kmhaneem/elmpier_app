import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/core/widget/colors.dart';
import 'package:intl/intl.dart';

import '../../../shared/providers.dart';

class SellerEarningsPage extends ConsumerWidget {
  const SellerEarningsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productState = ref.watch(soldProductProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Earning Summery',
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            productState.maybeWhen(
              success: (products) {
                final totalEarnings = products.fold<double>(
                  0,
                  (previousValue, product) =>
                      previousValue + (product.price * product.totalQty),
                );
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              "Total Earnings",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Rs. ${NumberFormat('#,##0').format(totalEarnings)}.00",
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w900,
                                color: customColor[800],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
              orElse: () => Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "Calculating total earnings...",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: productState.when(
                initial: () => Container(),
                actionInProgress: () =>
                    Center(child: CircularProgressIndicator()),
                success: (products) => ListView.separated(
                  itemCount: products.length,
                  separatorBuilder: (context, index) => Divider(),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    final totalAmount = product.price * product.totalQty;

                    return ListTile(
                      leading: CircleAvatar(
                        child: Text("${index + 1}"),
                      ),
                      title: Text(
                        product.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Rs. ${NumberFormat('#,##0').format(product.price)}.00 * ${product.totalQty} = Rs. ${NumberFormat('#,##0').format(totalAmount)}.00",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    );
                  },
                ),
                actionFailure: (failure) =>
                    Center(child: Text(failure.toString())),
              ),
            )
          ],
        ),
      ),
    );
  }
}
