import 'package:dashboard/presentation/routes/auto_router.gr.dart';
import 'package:dashboard/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:intl/intl.dart';

class ApporovedProductsPage extends ConsumerWidget {
  const ApporovedProductsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apporvedProductsState = ref.watch(approvedProductProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Approved Products'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: apporvedProductsState.maybeWhen(
          initial: () => Container(),
          loadInProgress: () => const Center(child: CircularProgressIndicator()),
          loadApprovedProductsSuccess: (products) => ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return InkWell(
                onTap: () {
                  AutoRouter.of(context)
                      .push(ProductViewRoute(product: product));
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          loadFailure: (failure) => Center(child: Text(failure.toString())),
          orElse: () => const Text("Failed"),
        ),
      ),
    );
  }
}
