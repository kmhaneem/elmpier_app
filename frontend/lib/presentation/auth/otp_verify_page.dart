import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/auth/widget/custom_elevated_button.dart';
import 'package:frontend/presentation/auth/widget/custom_textform_field.dart';

import '../../shared/providers.dart';
import '../routes/app_router.gr.dart';

class OtpVerifyPage extends ConsumerWidget {
  const OtpVerifyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInNotifier = ref.watch(signInProvider.notifier);
    final signInState = ref.watch(signInProvider);
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        signInState.otpVerifyFailureOrSuccess.fold(
            () {},
            (either) => either.fold(
                  (failure) {
                    FlushbarHelper.createError(
                      message: failure.map(
                          serverError: (_) => "Incorrect OTP",
                          invalidEmailOrPassword: (_) =>
                              "Invalid Email or Password",
                          emailAlreadyInUse: (_) => "Email Already In Use",
                          phoneNumberAlreadyInUse: (_) =>
                              "Phone Number Already In Use",
                          invalidOtp: (_) => "Invalid OTP",
                          unExpectedError: (_) => "Unexpected Error"
                          // orElse: () => "",
                          ),
                    ).show(context);
                  },
                  (r) {
                    AutoRouter.of(context).replace(HomeRoute());
                    print("Try to go from OTP page");
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
                "Verify OTP",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              CustomTextFormField(
                prefixIcon: const Icon(Icons.numbers),
                labelText: "Enter 6 Digit OTP",
                onChanged: ((value) =>
                    signInNotifier.otpNumberChanged(int.parse(value))),
                validator: ((_) => signInState.otp.value.fold(
                      (failure) => failure.maybeMap(
                        invalidOtp: (_) => "Invalid OTP",
                        orElse: () => null,
                      ),
                      (r) => null,
                    )),
                obscureText: false,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: CustomElevatedButton(
                  onPressed: () async {
                    await signInNotifier.verifyOtpButtonPressed();
                  },
                  child: const Text(
                    "Verify OTP",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              if (signInState.isSubmitting) ...[
                const SizedBox(height: 8),
                const LinearProgressIndicator(value: null),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
