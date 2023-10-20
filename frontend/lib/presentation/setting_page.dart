import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../shared/providers.dart';
import 'routes/app_router.gr.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInNotifier = ref.watch(signInProvider.notifier);
    final signInState = ref.watch(signInProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Settings Page"),
            ElevatedButton(
                onPressed: () {
                  signInNotifier.signOut();
                  AutoRouter.of(context).replace(SignInRoute());
                },
                child: Icon(Icons.logout))
          ],
        ),
      ),
    );
  }
}
