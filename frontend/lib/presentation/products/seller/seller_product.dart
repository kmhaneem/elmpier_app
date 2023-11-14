import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';

import '../../../shared/providers.dart';

class SellerProductPage extends ConsumerWidget {
  const SellerProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productNotifier = ref.read(sellerProductProvider.notifier);
    final productState = ref.watch(sellerProductProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      productNotifier.getSellerProducts();
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('My Products'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: productState.when(
          initial: () => Container(),
          loadInProgress: () => Center(child: CircularProgressIndicator()),
          loadSuccess: (products) => ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return InkWell(
                onTap: () {
                  AutoRouter.of(context)
                      .push(SellerProductViewRoute(product: product));
                },
                child: Card(
                  elevation: 1,
                  margin: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              ((product.imageUrls.isNotEmpty) &&
                                      product.imageUrls.first.isNotEmpty)
                                  ? product.imageUrls.first
                                  : 'lib/assets/images/elmpier-logo.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, bottom: 4),
                                child: Text(
                                  product.name.getOrCrash(),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Text(
                                "Used",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: Text(
                                  "RS.${product.price.getOrCrash()}",
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
          loadFailure: (failure) => Center(child: Text(failure.toString())),
        ),
      ),
    );
  }
}
