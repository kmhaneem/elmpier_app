import 'package:dashboard/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'routes/auto_router.gr.dart';

class AppWidget extends ConsumerStatefulWidget {
  const AppWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends ConsumerState<AppWidget> {
  final AppRouter _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    ref.read(authProvider.notifier).authCheckRequested();
    await Future.delayed(const Duration(seconds: 2));

    final authState = ref.read(authProvider);
    authState.map(
      initial: (_) {
        print("Initial");
        _appRouter.replace(SplashRoute());
      },
      authenticated: (_) {
        print("Authenticated");
        _appRouter.replace(HomeRoute());
      },
      unauthenticated: (_) {
        print("Unauthenticated");
        _appRouter.replace(SignInRoute());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      title: "Dashboard",
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}