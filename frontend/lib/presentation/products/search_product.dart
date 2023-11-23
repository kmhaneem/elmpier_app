import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:frontend/shared/providers.dart';

import '../../domain/advertisement/model/advertisement.dart';
import '../../shared/user.dart';

class ProductSearch extends ConsumerWidget {
  const ProductSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productSearchNotifier = ref.read(productSearchProvider.notifier);
    final productSearchState = ref.watch(productSearchProvider);
    final advertisementSearchNotifier =
        ref.read(advertisementProvider.notifier);
    final advertisementSearchState = ref.watch(advertisementProvider);
    final userId = getLoggedInUserId(ref);

    String searchText = "";

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Search Product",
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (query) => searchText = query,
              decoration: InputDecoration(
                labelText: "Search...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () =>
                      productSearchNotifier.fetchProducts(searchText, userId),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: productSearchState.when(
                initial: () =>
                    Center(child: Text("Enter a product name to search.")),
                loadInProgress: () =>
                    Center(child: CircularProgressIndicator()),
                loadSuccess: (products) => ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (_, index) {
                    final product = products[index];

                    return Card(
                      elevation: 1,
                      child: ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: product.imageUrls.isNotEmpty &&
                                      product.imageUrls.first.isNotEmpty
                                  ? Image.network(
                                      product.imageUrls.first,
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                        print('Error Loading Image: $error');
                                        return Icon(Icons.error);
                                      },
                                    )
                                  : Image.asset(
                                      'assets/images/elmpier-logo.png',
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    )),
                        ),
                        title: Text(product.name.getOrCrash()),
                        subtitle: Text("RS.${product.price.getOrCrash()}0"),
                        onTap: () =>
                            context.router.push(ProductRoute(product: product)),
                      ),
                    );
                  },
                ),
                loadFailure: (failure) =>
                    Center(child: Text(failure.toString())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
