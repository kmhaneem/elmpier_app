import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:frontend/shared/providers.dart';

class SellerProductDashboardPage extends ConsumerWidget {
  const SellerProductDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Dashboard'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildCard(
                context,
                imageUrl: 'lib/assets/images/products.png',
                text: 'Active Products',
                onTap: () {
                  ref.refresh(sellerProductProvider);
                  AutoRouter.of(context).push(SellerProductRoute());
                },
              ),
              _buildCard(
                context,
                imageUrl: 'lib/assets/images/soldout.png',
                text: 'Sold Products',
                onTap: () {
                  AutoRouter.of(context).push(SoldProductRoute());
                },
              ),
              _buildCard(
                context,
                imageUrl: 'lib/assets/images/earnings.png',
                text: 'Earnings',
                onTap: () {
                  AutoRouter.of(context).push(SellerEarningsRoute());
                },
              ),
            ],
          ),
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
          color: Colors.grey[200],
          child: Container(
            width: 400,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imageUrl,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 16),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
