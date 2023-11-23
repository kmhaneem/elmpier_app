import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/domain/wallet/model/wallet.dart';
import 'package:frontend/presentation/core/widget/colors.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import '../../shared/providers.dart';

class WalletSuccessPage extends ConsumerWidget {
  final Wallet wallet;
  const WalletSuccessPage({required this.wallet, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const Color successColor = Colors.green;
    const Color buttonColor = Colors.blueAccent;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outline,
              size: 100,
              color: successColor,
            ),
            SizedBox(height: 20),
            Text(
              "Success!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: successColor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "You've successfully added",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
            Text(
              "Rs. ${wallet.amount}.00 to your wallet!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                ref.refresh(walletProvider);
                AutoRouter.of(context).replace(WalletRoute());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: customColor,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                textStyle: TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text(
                "Go to Wallet",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
