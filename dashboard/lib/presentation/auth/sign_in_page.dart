import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dashboard/application/auth/sign_in/sign_in_state.dart';
import 'package:dashboard/domain/auth/auth.dart';
import 'package:dashboard/presentation/routes/auto_router.gr.dart';
import 'package:dashboard/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dashboard/presentation/widget/custom_elevated_button.dart';
import 'package:dashboard/presentation/widget/custom_textform_field.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    final signInNotifier = ref.watch(signInProvider.notifier);
    final signInState = ref.watch(signInProvider);

    ref.listen<SignInState>(signInProvider, (prevState, nextState) {
      print("State change detected: $nextState");
      nextState.maybeWhen(
        signInSuccess: () {
          AutoRouter.of(context).replace(HomeRoute());
        },
        loadFailure: (failure) {
          String errorMessage = failure.maybeMap(
            serverError: (_) => "Email or Password Wrong",
            orElse: () => "Invalid Email or Password",
          );
          if (errorMessage.isNotEmpty) {
            FlushbarHelper.createError(
              message: errorMessage,
            ).show(context);
          }
        },
        orElse: () {},
      );
    });

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            child: ListView(
          children: [
            const SizedBox(height: 50),
            Container(
              child: Image.asset("lib/assets/elmpier-admin-logo.png"),
            ),
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
            CustomTextFormField(
              controller: _emailController,
              prefixIcon: const Icon(Icons.email),
              labelText: "Email Address",
              obscureText: false,
            ),
            const SizedBox(height: 15),
            CustomTextFormField(
              controller: _passwordController,
              prefixIcon: const Icon(Icons.lock),
              labelText: "Password",
              obscureText: true,
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: CustomElevatedButton(
                onPressed: () {
                  final auth = Auth(
                    email: _emailController.text,
                    password: _passwordController.text,
                  );
                  signInNotifier.signIn(auth);
                },
                text: "Sign In",
              ),
            ),
            const SizedBox(height: 15),
          ],
        )),
      ),
    );
  }
}
