import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/cart/cart_state.dart';
import 'package:frontend/domain/core/user.dart';
import 'package:frontend/domain/product/model/product.dart';
import 'package:frontend/presentation/advertisements/advertisement_card.dart';
import 'package:frontend/presentation/core/widget/colors.dart';
import 'package:frontend/presentation/products/product/product_card.dart';
import 'package:frontend/presentation/products/widget/cart_item.dart';
import 'package:frontend/presentation/products/widget/core/constant.dart';
import 'package:frontend/presentation/products/widget/top_advertisement.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:frontend/shared/providers.dart';

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
    final elmpierPlusState = ref.watch(elmpierPlusProvider);
    final topAdsState = ref.watch(topAdsProvider);

    return Column(
      children: [
        SizedBox(height: 50),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset(
                elmpierPlusState.maybeWhen(
                  plusUserLoaded: (plusUser) => plusUser.isPlusUser
                      ? "lib/assets/images/elmpier-plus-logo.png"
                      : "lib/assets/images/elmpier-logo.png",
                  orElse: () => "lib/assets/images/elmpier-logo.png",
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      AutoRouter.of(context).push(const WalletRoute());
                    },
                    icon: Icon(Icons.wallet_outlined),
                  ),
                  IconButton(
                    onPressed: () {
                      ref.refresh(elmpierPlusProvider);
                      AutoRouter.of(context).push(const ElmpierPlusRoute());
                    },
                    icon: Icon(Icons.workspace_premium),
                  ),
                  IconButton(
                    onPressed: () async {
                      String? userId = await getLoggedInUserIdFromStorage();
                      print("USer ID is *****#### $userId");
                      AutoRouter.of(context).push(AllChatRoute(
                        userId: userId!,
                      ));
                    },
                    icon: Icon(Icons.chat_bubble_outlined),
                  ),
                  IconButton(
                    onPressed: () {
                      AutoRouter.of(context).push(SellerActivityRoute());
                    },
                    icon: Icon(Icons.attach_money),
                  ),
                  IconButton(
                    icon: Consumer(
                      builder: (context, WidgetRef ref, child) {
                        final cartCount = ref.watch(cartProvider).itemsCount;
                        return cartIconWithBadge(cartCount);
                      },
                    ),
                    onPressed: () {
                      context.router.push(const CartRoute());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Divider(
                color: customColor,
              ),
              topAdsState.maybeMap(
                topAdsloaded: (val) {
                  List<String> imageUrls = val.product
                      .map((pro) =>
                          pro.imageUrls.isNotEmpty ? pro.imageUrls.first : null)
                      .where((url) => url != null)
                      .map((url) => url!)
                      .toList();

                  void handleImageTap(String imageUrl) {
                    Product tappedProduct = val.product.firstWhere(
                      (pro) => pro.imageUrls.contains(imageUrl),
                      orElse: () => Product.empty(),
                    );

                    if (tappedProduct.id != 0) {
                      AutoRouter.of(context)
                          .push(ProductRoute(product: tappedProduct));
                    } else {}
                  }

                  return TopAdvertisement(
                    imageUrls: imageUrls,
                    onImageTap: handleImageTap,
                  );
                },
                orElse: () {
                  return Text('Loading or No Ads Available');
                },
              ),
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
    'Mobile Phones',
    'Laptops',
    'Headset',
    'Watches',
    'Speakers',
    'TVs',
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
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8),
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
