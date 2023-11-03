import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../routes/app_router.gr.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("SELL"),
                onTap: () {
                  AutoRouter.of(context).push(const SellProductRoute());
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
