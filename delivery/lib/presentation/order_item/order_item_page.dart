import 'package:auto_route/auto_route.dart';
import 'package:delivery/presentation/order_item/order_item_view_page.dart';
import 'package:delivery/presentation/routes/app_router.gr.dart';
import 'package:delivery/presentation/widget/colors.dart';
import 'package:delivery/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class OrderItemPage extends ConsumerWidget {
  const OrderItemPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderItemState = ref.watch(orderItemProvider);

    Future<void> _refreshProducts() async {
      ref.read(orderItemProvider.notifier).getAllOrderItem();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pickup Items',
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: orderItemState.maybeWhen(
        initial: () => const CircularProgressIndicator(),
        loadInProgress: () => const LinearProgressIndicator(),
        loadSuccess: (orderItems) => Column(
          children: [
            Card(
             
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        const Text(
                          "Total Items",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "${orderItems.length}",
                          style: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            Expanded(
              child: RefreshIndicator(
                onRefresh: _refreshProducts,
                child: ListView.builder(
                  itemCount: orderItems.length,
                  itemBuilder: (context, index) {
                    final item = orderItems[index];
                    return InkWell(
                      onTap: () {
                        AutoRouter.of(context).push(OrderItemViewRoute(
                            productId: item.productId, orderItemId: item.id));
                      },
                      child: Card(
                        child: IntrinsicHeight(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    item.imageUrl.isNotEmpty
                                        ? item.imageUrl
                                        : 'lib/assets/images/elmpier-logo.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, bottom: 4),
                                      child: Text(
                                        item.name,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Quantity: ${item.itemQty.toString()}",
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 4.0),
                                      child: Text(
                                        "RS.${NumberFormat('#,##0').format(item.price)}.00",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        loadFailure: ((orderItemFailure) => const LinearProgressIndicator()),
        orElse: () {},
      ),
    );
  }
}
