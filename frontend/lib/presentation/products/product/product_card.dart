import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../application/product/view_product/product_state.dart';
import '../../routes/app_router.gr.dart';

class ProductCardPage extends StatelessWidget {
  final ProductState productState;

  ProductCardPage({required this.productState});

  @override
  Widget build(BuildContext context) {
    return productState.when(
      initial: () => Container(),
      loadInProgress: () => CircularProgressIndicator(),
      loadSuccess: (products) => Column(
        children: products.asMap().entries.map((e) {
          return InkWell(
            onTap: () {
              context.router.push(ProductRoute(product: e.value));
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
                                  e.value.imageUrls.first.isNotEmpty)
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, bottom: 4),
                            child: Text(
                              e.value.name.getOrCrash(),
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
                              "RS.${e.value.price.getOrCrash()}",
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
    );
  }
}
