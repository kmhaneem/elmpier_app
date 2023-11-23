import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:frontend/presentation/core/widget/colors.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:intl/intl.dart';

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
        title: Text('Seller Products'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
                            (product.imageUrls.isNotEmpty &&
                                    product.imageUrls.first.isNotEmpty)
                                ? product.imageUrls.first
                                : 'lib/assets/images/elmpier-logo.png',
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
                                product.name.getOrCrash(),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              SizedBox(height: 8),
                              Text(
                                "Rs. ${NumberFormat('#,##0').format(product.price.getOrCrash())}.00",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                AutoRouter.of(context)
                                    .push(ProductUpdateRoute(product: product));
                              },
                              icon: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: customColor[50],
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.edit,
                                    color: customColor,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                            
                          ],
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
