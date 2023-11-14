import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/shared/providers.dart';

import '../routes/app_router.gr.dart';

class AddProductPage extends ConsumerWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final walletState = ref.watch(walletProvider);
    var _amount;

    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("SELL"),
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
            ),
            Card(
              child: ListTile(
                title: Text("ADVERTISE"),
                onTap: () {
                  AutoRouter.of(context).push(const AdvertiseProductRoute());
                },
              ),
            ),
          ],
        ));
  }
}
