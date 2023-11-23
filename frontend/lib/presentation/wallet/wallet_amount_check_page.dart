import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';

class WalletAmountCheckPage extends ConsumerWidget {
  const WalletAmountCheckPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const Color primaryColor = Colors.orangeAccent;
    const Color secondaryColor = Colors.blueGrey;

    return Scaffold(
      appBar: AppBar(
        title: Text("Low Balance"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.warning_amber_rounded,
                size: 100,
                color: primaryColor,
              ),
              SizedBox(height: 20),
              Text(
                "Wallet Balance Low",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  "To continue selling products, please ensure your wallet has a minimum balance of Rs. 1000.00.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).replace(WalletRoute());
                },
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  textStyle: TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text("Recharge Wallet"),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  AutoRouter.of(context).replace(HomeRoute());
                },
                style: TextButton.styleFrom(
                  primary: secondaryColor,
                ),
                child: Text(
                  "Return Home",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
