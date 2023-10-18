import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/product/search_product.dart';
import 'package:frontend/presentation/product/user_product.dart';
import 'package:frontend/presentation/product/view_product.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:frontend/presentation/setting_page.dart';
import 'package:frontend/shared/providers.dart';

import '../infrastructure/product/dto/product_dtos.dart';
import 'core/widget/bottom_nav_item.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    ViewProduct(),
    SearchProduct(),
    UserProduct(),
    SettingPage()
  ];
  Widget currentScreen = const ViewProduct();
  @override
  Widget build(BuildContext context) {
    // final productNotifier = ref.read(productProvider.notifier);
    // final productState = ref.watch(productProvider);

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   productNotifier.watchAllStarted();
    // });

    return Scaffold(
      body: currentScreen,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          AutoRouter.of(context).push(const AddProductRoute());
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NavItem(
                    icon: Icons.home,
                    text: "Home",
                    currentTab: currentTab,
                    tab: 0,
                    onTap: () {
                      setState(() {
                        currentScreen = ViewProduct();
                        currentTab = 0;
                      });
                    },
                  ),
                  NavItem(
                    icon: Icons.search,
                    text: "Search",
                    currentTab: currentTab,
                    tab: 1,
                    onTap: () {
                      setState(() {
                        currentScreen = SearchProduct();
                        currentTab = 1;
                      });
                    },
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NavItem(
                    icon: Icons.list,
                    text: "Products",
                    currentTab: currentTab,
                    tab: 3,
                    onTap: () {
                      setState(() {
                        currentScreen = UserProduct();
                        currentTab = 3;
                      });
                    },
                  ),
                  NavItem(
                    icon: Icons.settings,
                    text: "Settings",
                    currentTab: currentTab,
                    tab: 4,
                    onTap: () {
                      setState(() {
                        currentScreen = SettingPage();
                        currentTab = 4;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // children: [
      //   productState.when(
      //     initial: () => Container(),
      //     loadInProgress: () => CircularProgressIndicator(),
      //     loadSuccess: (products) {
      //       products.forEach((product) {
      //         print('Product ID: ${product.id.getOrCrash()}');
      //         print('Product User Id: ${product.userId.getOrCrash()}');
      //         print('Product Name: ${product.name.getOrCrash()}');
      //         print(
      //             'Product Description: ${product.description.getOrCrash()}');
      //         print('Product Category: ${product.category.getOrCrash()}');
      //         print('Product Brand: ${product.brand.getOrCrash()}');
      //         print('Product Model: ${product.model.getOrCrash()}');
      //         print('Product Price: ${product.price.getOrCrash()}');
      //         print('Product Stock: ${product.stock.getOrCrash()}');
      //       });
      //       return Container();
      //     },
      //     loadFailure: (failure) {
      //       print('Product failure: $failure');
      //       return Text(failure.toString());
      //     },
      //   ),
      // ],
    );
  }
}
