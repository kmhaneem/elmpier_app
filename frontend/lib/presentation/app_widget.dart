import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';

import '../shared/providers.dart';
import 'ads/popup.dart';
import 'core/widget/colors.dart';

class AppWidget extends ConsumerWidget {
  const AppWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = AppRouter();
    final authState = ref.watch(authProvider);
    final authNotifier = ref.read(authProvider.notifier);
    authNotifier.authCheckRequested();

    Future.delayed(const Duration(seconds: 2), () {
      // appRouter.replace(HomeRoute());
      authState.map(
        initial: (_) {
          print("Initial");
        },
        authenticated: (_) {
          appRouter.replace(HomeRoute());
          print("Authenticated");
        },
        unauthenticated: (_) {
          appRouter.replace(SignInRoute());
          print("Unauthenticated");
        },
      );
    });
    appRouter.replace(SplashRoute());

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: customColor,
      ),
      title: "ELMP",
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
