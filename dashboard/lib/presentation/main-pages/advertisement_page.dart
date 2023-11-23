import 'package:auto_route/auto_route.dart';
import 'package:dashboard/presentation/routes/auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdvertisementPage extends ConsumerWidget {
  const AdvertisementPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advertisements'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildCard(
                context,
                imageUrl: 'lib/assets/all-products-admin.png',
                text: 'All Advertisements',
                onTap: () {
                  AutoRouter.of(context).push(AllAdvertisementRoute());
                },
              ),
              _buildCard(
                context,
                imageUrl: 'lib/assets/approved-products-admin.png',
                text: 'Approved Advertisements',
                onTap: () {
                  AutoRouter.of(context).push(ApprovedAdvertisementRoute());
                },
              ),
              _buildCard(
                context,
                imageUrl: 'lib/assets/pending-products-admin.png',
                text: 'Pending Advertisements',
                onTap: () {
                  AutoRouter.of(context).push(PendingAdvertisementRoute());
                },
              ),
              _buildCard(
                context,
                imageUrl: 'lib/assets/rejected-products-admin.png',
                text: 'Rejected Advertisements',
                onTap: () {
                  
                  AutoRouter.of(context).push(RejectedAdvertisementRoute());
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
