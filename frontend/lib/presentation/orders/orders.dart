import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:frontend/shared/providers.dart';
import 'package:intl/intl.dart';

class OrdersPage extends ConsumerStatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends ConsumerState<OrdersPage> {
  @override
  void initState() {
    super.initState();
    ref.refresh(orderItemProvider);

    Future.delayed(Duration.zero, () {
      ref.watch(orderItemProvider.notifier).watchAllStarted();
    });
  }

  @override
  Widget build(BuildContext context) {
    final orderItemNotifier = ref.read(orderItemProvider.notifier);
    final orderItemState = ref.watch(orderItemProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Your Orders"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: orderItemState.when(
        initial: () => const Center(child: LinearProgressIndicator()),
        loadInProgress: () => const Center(child: CircularProgressIndicator()),
        loadSuccess: (orderItems) {
          if (orderItems.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "You can see your ordered products once you ordered.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: orderItems.length,
              itemBuilder: (context, index) {
                var orderItem = orderItems[index];
                return InkWell(
                  onTap: () {
                    AutoRouter.of(context)
                        .push(OrderStatusRoute(orderItemId: orderItem.id));
                  },
                  child: Card(
                    elevation: 1,
                    margin: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              orderItem.imageUrl.isNotEmpty
                                  ? orderItem.imageUrl
                                  : 'lib/assets/images/default-image.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  orderItem.name,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Rs. ${NumberFormat('#,##0').format(orderItem.price)}.00",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 8),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
        loadFailure: (failure) => Center(child: Text(failure.toString())),
      ),
    );
  }
}
