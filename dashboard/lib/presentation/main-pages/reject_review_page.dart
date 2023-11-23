import 'package:dashboard/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RejectReviewPage extends ConsumerWidget {
  const RejectReviewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reviewRejectState = ref.watch(reviewRejectProductProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Reject Reviews'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: reviewRejectState.maybeWhen(
          initial: () => Container(),
          loadInProgress: () => Center(child: CircularProgressIndicator()),
          loadRejectedReviewsSuccess: (products) => ListView.separated(
            itemCount: products.length,
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              final product = products[index];

              return ListTile(
                leading: CircleAvatar(
                  
                  child: Text("${product.id}"),
                ),
                title: Row(
                  children: [
                    Expanded(
                      
                      child: Text(
                        "${product.productname}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                        overflow:
                            TextOverflow.ellipsis, 
                        maxLines: 1, 
                      ),
                    ),
                  ],
                ),
                subtitle: Text(
                  "${product.reason}",
                  style: TextStyle(
                    color: Colors.black54,
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
