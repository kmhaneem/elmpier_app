import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/orders.dart';
import 'package:frontend/presentation/products/search_product.dart';
import 'package:frontend/presentation/products/user_product.dart';
import 'package:frontend/presentation/products/view_product.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:frontend/presentation/profile_page.dart';
import 'package:frontend/shared/providers.dart';
import 'core/widget/bottom_nav_item.dart';

class HomePage extends ConsumerStatefulWidget {
  HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    ViewProduct(),
    ProductSearch(),
    OrdersPage(),
    ProfilePage()
  ];
  Widget currentScreen = const ViewProduct();

  @override
  Widget build(BuildContext context) {
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
                        currentScreen = ProductSearch();
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
                    icon: Icons.shopping_bag,
                    text: "Orders",
                    currentTab: currentTab,
                    tab: 3,
                    onTap: () {
                      setState(() {
                        ref.refresh(orderItemProvider);
                        currentScreen = OrdersPage();
                        currentTab = 3;
                      });
                    },
                  ),
                  NavItem(
                    icon: Icons.account_circle,
                    text: "Profile",
                    currentTab: currentTab,
                    tab: 4,
                    onTap: () {
                      setState(() {
                        currentScreen = ProfilePage();
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
    );
  }
}
