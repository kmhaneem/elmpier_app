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
          // primarySwatch: customColor,
      ),
      title: "Dashboard",
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

// import 'package:dashboard/shared/provider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import 'routes/auto_router.gr.dart';

// class AppWidget extends ConsumerWidget {
//   const AppWidget({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final appRouter = AppRouter();
//     final authNotifier = ref.read(authProvider.notifier);
//     authNotifier.authCheckRequested();

//     Future.delayed(const Duration(seconds: 2), (){
//     final authState = ref.read(authProvider);
//       authState.map(
//       initial: (_) {
//         print("Initial");
//       },
//       authenticated: (_) {
//         appRouter.replace(HomeRoute());
//         print("Authenticated");
//       },
//       unauthenticated: (_) {
//         appRouter.replace(SignInRoute());
//         print("Unauthenticated");
//       },
//     );
//     });
//     // appRouter.replace(SplashRoute());
//     // Future.delayed(Duration(seconds: 2), () {
//     //   appRouter.replace(SignInRoute());
//     // });

//     appRouter.replace(SplashRoute());
//     return MaterialApp.router(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//           // primarySwatch: customColor,
//           ),
//       title: "Dashboard",
//       routerDelegate: appRouter.delegate(),
//       routeInformationParser: appRouter.defaultRouteParser(),
//     );
//   }
// }