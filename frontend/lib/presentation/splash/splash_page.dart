import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      context.router
          .replace(HomeRoute()); 
    });
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
