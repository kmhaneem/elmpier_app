import 'package:auto_route/auto_route.dart';
import 'package:delivery/presentation/routes/app_router.gr.dart';
import 'package:delivery/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart'; // Add this line for using icons

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userProfileState = ref.watch(userProfileProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 120.0,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFFD7500),
                  Color(0xFFFFC100), // Starting color: bright orange
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: userProfileState.maybeWhen(
                success: (profile) => Text(
                  "Hi 🙋🏻‍♂️, " + profile.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                orElse: () {},
              ),
            ),
          ),

       

          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text(
                  "Delivery Now",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: userProfileState.maybeWhen(
                  success: (profile) => Text(
                    profile.province + " Province, " + profile.district,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  orElse: () {},
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCard(
                context,
                imageUrl: "lib/assets/pickupitem.png",
                text: 'Pickup Items',
                onTap: () => AutoRouter.of(context).push(const OrderItemRoute()),
              ),
              const SizedBox(width: 20),
              _buildCard(
                context,
                imageUrl: "lib/assets/picked.png",
                text: 'Delivery Items',
                onTap: () => AutoRouter.of(context).push(const DeliveryItemRoute()),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCard(
                context,
                imageUrl: "lib/assets/product.png",
                text: 'Picked Items',
                onTap: () => AutoRouter.of(context).push(const PickedItemsRoute()),
              ),
              const SizedBox(width: 20),
              _buildCard(
                context,
                imageUrl: "lib/assets/rejected.png",
                text: 'Rejected Items',
                onTap: () => AutoRouter.of(context).push(const RejectedItemRoute()),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCard(
                context,
                imageUrl: "lib/assets/profile.png",
                text: 'Profile',
                onTap: () => AutoRouter.of(context).push(const ProfileRoute()),
              ),
            ],
          ),
        ],
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
                const SizedBox(height: 8),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
