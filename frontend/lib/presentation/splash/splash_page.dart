import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';

import '../../shared/providers.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  late final appRouter;

  @override
  void initState() {
    super.initState();
    appRouter = ref.read(appRouterProvider);
    ref.read(authProvider.notifier).authCheckRequested();
    Future.delayed(
        Duration(
          seconds: 3,
        ),
        navigateBasedOnAuthState);
  }

  // void navigateBasedOnAuthState() {
  //   final authState = ref.watch(authProvider);
  //   final authNotifier = ref.read(authProvider.notifier);

  //   authState.map(
  //     initial: (_) {
  //       print("Initial");
  //     },
  //     authenticated: (_) {
  //       print("Authenticated");
  //       appRouter.replace(HomeRoute());
  //     },
  //     unauthenticated: (_) {
  //       appRouter.replace(SignInRoute());
  //       print("Unauthenticated");
  //     },
  //   );
  // }

  void navigateBasedOnAuthState() {
    appRouter.replace(HomeRoute());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("lib/assets/images/elmpier-logo.png"),
      ),
    );
  }
}
