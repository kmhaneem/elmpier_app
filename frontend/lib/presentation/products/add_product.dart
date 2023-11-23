import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/shared/providers.dart';

import '../routes/app_router.gr.dart';

class AddProductPage extends ConsumerWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final walletState = ref.watch(walletProvider);
    final userProfileState = ref.watch(userProfileXProvider);
    var _amount;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sell & Advertise'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildCard(
              context,
              imageUrl: 'lib/assets/images/sell.png',
              text: 'Sell',
              onTap: () {
                walletState.maybeWhen(
                  walletLoaded: (wallet) {
                    if (wallet.amount < 1000) {
                      AutoRouter.of(context)
                          .push(const WalletAmountCheckRoute());
                    } else {
                      AutoRouter.of(context).push(const SellProductRoute());
                    }
                  },
                  orElse: () => "",
                );
              },
            ),
            _buildCard(
              context,
              imageUrl: 'lib/assets/images/advertise.png',
              text: 'Advertise',
              onTap: () {
                userProfileState.maybeWhen(
                  loaded: (user) {
                    if (user.firstName.isEmpty) {
                      AutoRouter.of(context).push(
                        UserProfileAddRoute(
                            initialMessage:
                                'Update your profile before add Advertisement!'),
                      );
                      print("NEW USER EMAIL IS ${user.email}");
                    } else {
                      AutoRouter.of(context)
                          .push(const AdvertiseProductRoute());
                    }
                  },
                  orElse: () => "",
                );
              },
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
