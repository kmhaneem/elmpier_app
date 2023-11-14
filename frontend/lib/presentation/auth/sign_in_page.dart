import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/widget/custom_elevated_button.dart';
import 'package:frontend/presentation/widget/custom_textform_field.dart';

import '../../shared/providers.dart';
import '../routes/app_router.gr.dart';

class SignInPage extends ConsumerWidget {
  // final VoidCallback onSignUpTap;
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController passwordController = TextEditingController();
    final signInNotifier = ref.watch(signInProvider.notifier);
    final signInState = ref.watch(signInProvider);
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        signInState.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
                  (failure) {
                    FlushbarHelper.createError(
                      message: failure.map(
                        serverError: (_) => "Server Error",
                        invalidEmailOrPassword: (_) =>
                            "Invalid Email or Password",
                        emailAlreadyInUse: (_) => "Email Already In Use",
                        phoneNumberAlreadyInUse: (_) =>
                            "Phone Number Already In Use",
                        invalidOtp: (_) => "Invalid OTP",
                        unExpectedError: (_) => "UnExpected Error",
                      ),
                    ).show(context);
                  },
                  (r) {
                    AutoRouter.of(context).replace(HomeRoute());
                  },
                ));
      },
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            autovalidateMode: signInState.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: ListView(
              children: [
                const SizedBox(height: 50),
                Container(
                  child: Image.asset("lib/assets/images/elmpier-logo.png"),
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
                  onChanged: ((value) => signInNotifier.emailChanged(value)),
                  validator: ((_) => signInState.email.value.fold(
                        (failure) => failure.maybeMap(
                          invalidEmail: ((_) => "Invalid Email"),
                          orElse: (() => null),
                        ),
                        (r) => null,
                      )),
                  obscureText: false,
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: "Password",
                  onChanged: ((value) => signInNotifier.passwordChanged(value)),
                  validator: ((_) => signInState.password.value.fold(
                        (failure) => failure.maybeMap(
                          shortPassword: (_) => "Short Password",
                          orElse: () => null,
                        ),
                        (r) => null,
                      )),
                  obscureText: true,
                  
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  child: CustomElevatedButton(
                    onPressed: () {
                      signInNotifier.signInButtonPressed();
                    },
                    text: "Sign In",
                  ),
                ),
                const SizedBox(height: 15),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "New to Elmpier?",
                      ),
                      TextButton(
                          onPressed: () {
                            signInNotifier.clearInputs();
                            // AutoRouter.of(context).replace(const SignUpRoute());
                            AutoRouter.of(context).replace(const SignUpRoute());
                            // ref.refresh(userProvider);
                          },
                          child: const Text(
                            key: Key('signUpButton'),
                            "Sign Up",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
                if (signInState.isSubmitting) ...[
                  const SizedBox(height: 8),
                  const LinearProgressIndicator(value: null)
                ]
              ],
            )),
      ),
    );
  }
}
