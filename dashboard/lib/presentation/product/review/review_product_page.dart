import 'package:auto_route/auto_route.dart';
import 'package:dashboard/presentation/product/review/review_product_view_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/provider.dart';
import '../../routes/auto_router.gr.dart';

class ReviewProductPage extends ConsumerWidget {
  const ReviewProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productNotifier = ref.read(productProvider.notifier);
    final productState = ref.watch(productProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      productNotifier.getProductsToReview();
    });
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
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
                productState.maybeWhen(
                  initial: () => Container(),
                  loadInProgress: () => CircularProgressIndicator(),
                  loadSuccess: (products) => Column(
                    children: products.asMap().entries.map((e) {
                      return InkWell(
                        onTap: () {
                          context.router
                              .push(ReviewProductViewRoute(product: e.value));
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
                                      ((e.value.imageUrls.isNotEmpty) &&
                                              e.value.imageUrls.first
                                                  .isNotEmpty)
                                          ? e.value.imageUrls.first
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8.0, bottom: 4),
                                        child: Text(
                                          e.value.name,
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
                                        padding:
                                            const EdgeInsets.only(bottom: 4.0),
                                        child: Text(
                                          "RS.${e.value.price}",
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
                    }).toList(),
                  ),
                  loadFailure: (failure) => Text(failure.toString()),
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
