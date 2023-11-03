import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/core/user.dart';
import 'package:frontend/presentation/advertisements/advertisement_card.dart';
import 'package:frontend/presentation/products/product/product_card.dart';
import 'package:frontend/presentation/products/widget/top_advertisement.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:frontend/shared/providers.dart';

import '../../shared/user.dart';

class ViewProduct extends ConsumerStatefulWidget {
  const ViewProduct({Key? key}) : super(key: key);

  @override
  _ViewProductState createState() => _ViewProductState();
}

class _ViewProductState extends ConsumerState<ViewProduct> {
  late final User user;
  final ValueNotifier<TabSelection> selectedTabNotifier =
      ValueNotifier<TabSelection>(TabSelection.Product);

  Future<String?> getLoggedInUserIdFromStorage() async {
    return await secureStorage.read("user-id");
  }

  @override
  void dispose() {
    selectedTabNotifier.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    final productNotifier = ref.read(productProvider.notifier);
    final advertisementNotifier = ref.read(advertisementProvider.notifier);
    productNotifier.watchAllStarted();
    Future(() {
      advertisementNotifier.getAllAdvertisements();
    });
  }

  @override
  Widget build(BuildContext context) {
    final productState = ref.watch(productProvider);
    final advertisementState = ref.watch(advertisementProvider);

    return Column(
      children: [
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("lib/assets/images/elmpier-logo.png", width: 130),
            Row(
              children: [
                IconButton(
                  onPressed: () async {
                    String? userId = await getLoggedInUserIdFromStorage();
                    print("USer ID is *****#### $userId");
                    AutoRouter.of(context).push(AllChatRoute(
                      userId: userId!,
                      // otherUserId: 2.toString(),
                    ));
                  },
                  icon: Icon(Icons.chat_bubble_outlined),
                ),
                IconButton(
                  onPressed: () {
                    AutoRouter.of(context).push(SellerRoute());
                  },
                  icon: Icon(Icons.attach_money),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                ),
              ],
            ),
          ],
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              CategoryDisplay(),
              TopAdvertisement(),
              ValueListenableBuilder<TabSelection>(
                valueListenable: selectedTabNotifier,
                builder: (context, selectedTab, child) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor:
                                    selectedTab == TabSelection.Product
                                        ? Colors.white
                                        : Colors.black,
                                backgroundColor:
                                    selectedTab == TabSelection.Product
                                        ? Theme.of(context).primaryColor
                                        : Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: () {
                                selectedTabNotifier.value =
                                    TabSelection.Product;
                              },
                              child: Text('Product'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor:
                                    selectedTab == TabSelection.Advertisement
                                        ? Colors.white
                                        : Colors.black,
                                backgroundColor:
                                    selectedTab == TabSelection.Advertisement
                                        ? Theme.of(context).primaryColor
                                        : Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: () {
                                selectedTabNotifier.value =
                                    TabSelection.Advertisement;
                              },
                              child: Text('Advertisement'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              ValueListenableBuilder<TabSelection>(
                valueListenable: selectedTabNotifier,
                builder: (context, selectedTab, child) {
                  if (selectedTab == TabSelection.Product) {
                    return ProductCardPage(productState: productState);
                  } else if (selectedTab == TabSelection.Advertisement) {
                    return AdvertisementCardPage(
                        advertisementState: advertisementState);
                  } else {
                    return SizedBox.shrink();
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CategoryDisplay extends StatelessWidget {
  final List<String> categories = [
    'Definitions',
    'Sensitive Inferences',
    'Rubrics',
    'Actions',
    'Definitions',
    'Sensitive Inferences',
    'Rubrics',
    'Actions'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Chip(
              label: Text(categories[index]),
            ),
          );
        },
      ),
    );
  }
}

enum TabSelection {
  Product,
  Advertisement,
}
