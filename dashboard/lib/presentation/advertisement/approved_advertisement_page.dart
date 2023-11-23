import 'package:auto_route/auto_route.dart';
import 'package:dashboard/presentation/routes/auto_router.gr.dart';
import 'package:dashboard/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class ApprovedAdvertisementPage extends ConsumerWidget {
  const ApprovedAdvertisementPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final approvedAdvertisementsState =
        ref.watch(approvedAdvertisementProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Approved Advertisement'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: approvedAdvertisementsState.maybeWhen(
          initial: () => Container(),
          loadInProgress: () => Center(child: CircularProgressIndicator()),
          loadApprovedAdvertisementsSuccess: (products) => ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return InkWell(
                onTap: () {
                  AutoRouter.of(context)
                      .push(AdvertisementViewRoute(advertisement: product));
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
                            product.imageUrls.first,
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
                                product.name,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Rs. ${NumberFormat('#,##0').format(product.price)}.00",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 8),
                            ],
                          ),
                        ),
                        Column(),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          loadFailure: (failure) => Center(child: Text(failure.toString())),
          orElse: () => Text("Failed"),
        ),
      ),
    );
  }
}
