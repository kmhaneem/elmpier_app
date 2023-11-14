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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ref.refresh(productProvider);
                AutoRouter.of(context).push(ProductRoute());
              },
              child: Text("Product Page"),
            ),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(UserRoute());
              },
              child: Text("All Users"),
            ),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(TransactionRoute());
              },
              child: Text("Transaction"),
            ),
            ElevatedButton(
              onPressed: () {
                ref.refresh(productProvider);
                AutoRouter.of(context).push(ReviewProductRoute());
              },
              child: Text("Review Product"),
            ),
          ],
        ),
      ),
    );
  }
}
