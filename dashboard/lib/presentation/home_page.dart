import 'package:auto_route/auto_route.dart';
import 'package:dashboard/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'routes/auto_router.gr.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ELMPIER Dashboard",
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                AutoRouter.of(context).push(AdminRoute());
              },
              icon: Icon(Icons.person))
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Hi 👋, Elmpier Admin",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCard(context,
                    imageUrl: "lib/assets/products-admin.png",
                    text: 'Products',
                    onTap: () => AutoRouter.of(context).push(ProductsRoute())),
                const SizedBox(width: 20),
                _buildCard(context,
                    imageUrl: "lib/assets/advertisement-admin.png",
                    text: 'Advertisements',
                    onTap: () =>
                        AutoRouter.of(context).push(AdvertisementRoute())),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCard(context,
                    imageUrl: "lib/assets/orders-admin.png",
                    text: 'Orders',
                    onTap: () => AutoRouter.of(context).push(OrdersRoute())),
                const SizedBox(width: 20),
                _buildCard(context,
                    imageUrl: "lib/assets/transactions-admin.png",
                    text: 'Transactions',
                    onTap: () =>
                        AutoRouter.of(context).push(TransactionsRoute())),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCard(context,
                    imageUrl: "lib/assets/users-admin.png",
                    text: 'Users',
                    onTap: () => AutoRouter.of(context).push(UsersRoute())),
                const SizedBox(width: 20),
                _buildCard(context,
                    imageUrl: "lib/assets/delivery-admin.png",
                    text: 'Delivery Users',
                    onTap: () =>
                        AutoRouter.of(context).push(DeliveryUserRoute())),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 20),
                _buildCard(context,
                    imageUrl: "lib/assets/reject-admin.png",
                    text: 'Reject Reviews',
                    onTap: () =>
                        AutoRouter.of(context).push(RejectReviewRoute())),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context,
      {required String imageUrl,
      required String text,
      required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 0,
          color: Colors.grey[100],
          child: Container(
            width: 150,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imageUrl,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 8),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
