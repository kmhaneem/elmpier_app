import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../application/product/view_product/product_state.dart';
import '../../routes/app_router.gr.dart';

class ProductCardPage extends StatelessWidget {
  final ProductState productState;

  ProductCardPage({required this.productState});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        productState.when(
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
                            ((e.value.imageUrls.isNotEmpty) &&
                                    e.value.imageUrls.first.isNotEmpty)
                                ? e.value.imageUrls.first
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
                                e.value.name.getOrCrash(),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                e.value.condition!,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Rs. ${NumberFormat('#,##0').format(e.value.price.getOrCrash())}.00",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
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
        ),
      ],
    );
  }
}
