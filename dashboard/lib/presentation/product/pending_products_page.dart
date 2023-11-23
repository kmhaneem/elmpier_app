import 'package:dashboard/presentation/routes/auto_router.gr.dart';
import 'package:dashboard/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:intl/intl.dart';

class PendingProductsPage extends ConsumerWidget {
  const PendingProductsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pendingProductsState = ref.watch(pendingProductProvider);

    Future<void> _refreshProducts() async {
      ref.read(pendingProductProvider.notifier).getPendingProducts();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pending Products'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: pendingProductsState.maybeWhen(
          initial: () => Container(),
          loadInProgress: () => const Center(child: CircularProgressIndicator()),
          loadPendingProductsSuccess: (products) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 10, top: 10, left: 10, right: 10),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.pending_actions, color: Colors.blue),
                      Text(
                        "Pending Products: ${products.length}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const Icon(Icons.info_outline, color: Colors.blue),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: RefreshIndicator(
                  color: Colors.orange,
                  onRefresh: _refreshProducts,
                  child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return InkWell(
                        onTap: () {
                          AutoRouter.of(context)
                              .push(PendingProductViewRoute(product: product));
                        },
                        child: Card(
                          elevation: 1,
                          margin: const EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    product.imageUrls.first,
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        product.name,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        "Rs. ${NumberFormat('#,##0').format(product.price)}.00",
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                    ],
                                  ),
                                ),
                                const Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [],
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
          loadFailure: (failure) => Center(child: Text(failure.toString())),
          orElse: () => const Text("Failed"),
        ),
      ),
    );
  }
}
