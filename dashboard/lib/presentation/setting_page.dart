import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../shared/provider.dart';
import 'routes/auto_router.gr.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.read(signInProvider.notifier);

    void signOut() {
      authNotifier.signOut();
      AutoRouter.of(context).replace(SignInRoute());
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text("Welcome to Home Page"),
          ),
          ElevatedButton(
            onPressed: signOut,
            child: Text("Sign Out"),
          ),
        ],
      ),
    );
  }
}
