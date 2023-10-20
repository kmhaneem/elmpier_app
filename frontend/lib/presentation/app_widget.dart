import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';

import '../shared/providers.dart';
import 'core/widget/colors.dart';

class AppWidget extends ConsumerWidget {
  AppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _appRouter = ref.watch(appRouterProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: customColor,
      ),
      title: "ELMPIER",
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
