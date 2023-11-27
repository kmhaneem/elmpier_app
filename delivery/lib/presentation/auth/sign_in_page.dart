import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:delivery/application/auth/sign_in/sign_in_state.dart';
import 'package:delivery/domain/auth/model/auth.dart';
import 'package:delivery/presentation/routes/app_router.gr.dart';
import 'package:delivery/presentation/widget/custom_elevated_button.dart';
import 'package:delivery/presentation/widget/custom_text_form_field.dart';
import 'package:delivery/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    final signInNotifier = ref.watch(signInProvider.notifier);

    ref.listen<SignInState>(signInProvider, (prevState, nextState) {
      print("State change detected: $nextState");
      nextState.maybeWhen(
        success: () {
          AutoRouter.of(context).replace(HomeRoute());
        },
        failure: (failure) {
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
              child: Image.asset("lib/assets/elmpier-delivery-man.png"),
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
              prefixIcon: const Icon(Icons.email),
              labelText: "Email Address",
              controller: _emailController,
              obscureText: false,
            ),
            const SizedBox(height: 15),
            CustomTextFormField(
              prefixIcon: const Icon(Icons.lock),
              labelText: "Password",
              controller: _passwordController,
              obscureText: true,
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: CustomElevatedButton(
                onPressed: () {
                  Auth auth = Auth(
                    email: _emailController.text,
                    password: _passwordController.text,
                  );
                  print(auth);
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
