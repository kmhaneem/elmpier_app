import 'package:auto_route/auto_route.dart';
import 'package:dashboard/domain/auth/auth.dart';
import 'package:dashboard/presentation/routes/auto_router.gr.dart';
import 'package:dashboard/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInPage extends ConsumerWidget {
  SignInPage({super.key});
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInNotifier = ref.watch(signInProvider.notifier);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              const SizedBox(height: 50),
              const Text(
                "Sign in",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: "Email",
                ),
                controller: _emailController,
              ),
              const SizedBox(height: 15),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  labelText: "Password",
                ),
                controller: _passwordController,
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                  onPressed: () {
                    final auth = Auth(
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
                    signInNotifier.signIn(auth);

                    AutoRouter.of(context).replace(HomeRoute());
                  },
                  child: const Text("Sign In")),
            ],
          ),
        ),
      ),
    );
  }
}
