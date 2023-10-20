import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:frontend/shared/providers.dart';

class ViewProduct extends ConsumerWidget {
  const ViewProduct({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productNotifier = ref.read(productProvider.notifier);
    final productState = ref.watch(productProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      productNotifier.watchAllStarted();
    });
    return Column(
      children: [
        Container(
          height: 120.0,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          alignment: Alignment.bottomLeft,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: (Text(
              "Elmpier 👋",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            )),
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // TopAdvertisement(),
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              //   child: Row(),
              // ),
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
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Container(
                          height: 100,
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
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, bottom: 4),
                                      child: Text(
                                        e.value.name.getOrCrash(),
                                        style: const TextStyle(
                                          fontSize: 18,
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
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        "RS.${e.value.price.getOrCrash()}0",
                                        // "RS.${e.value.price}0",
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
