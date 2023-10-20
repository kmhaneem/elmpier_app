import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/application/auth/sign_in/sign_in_state.dart';
import 'package:frontend/presentation/auth/widget/custom_elevated_button.dart';
import 'package:frontend/presentation/auth/widget/custom_textform_field.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';

import '../../shared/providers.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpNotifier = ref.watch(signInProvider.notifier);
    final signUpState = ref.watch(signInProvider);

    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        signUpState.authFailureOrSuccessOption.fold(
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
                        // orElse: () => "",
                      ),
                    ).show(context);
                  },
                  (r) {
                    // print("***********SIGN UP SUCCESS *************");
                    // print("***********SIGN UP SUCCESS *************");
                    AutoRouter.of(context).replace(const OtpVerifyRoute());
                  },
                ));
      },
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          autovalidateMode: signUpState.showErrorMessages
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
                "Sign up",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                prefixIcon: const Icon(Icons.email),
                labelText: "Email Address",
                onChanged: ((value) => signUpNotifier.emailChanged(value)),
                validator: ((_) => signUpState.email.value.fold(
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
                labelText: "Phone Number",
                prefixIcon: const Icon(Icons.phone),
                onChanged: ((value) =>
                    signUpNotifier.phoneNumberChanged(value)),
                validator: ((value) => signUpState.phone.value.fold(
                      (f) => f.maybeMap(
                          invalidPhone: (value) => "Invalid Phone",
                          orElse: (() => null)),
                      (r) => null,
                    )),
                obscureText: false,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                prefixIcon: const Icon(Icons.lock),
                labelText: "Password",
                onChanged: ((value) => signUpNotifier.passwordChanged(value)),
                validator: ((_) => signUpState.password.value.fold(
                      (failure) => failure.maybeMap(
                        shortPassword: (_) => "Short Password",
                        orElse: () => null,
                      ),
                      (r) => null,
                    )),
                obscureText: true,
              ),
              const SizedBox(height: 15),
              const Text(
                "By signing up, you're agree to our Terms & Conditions and Privacy Policy",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 50,
                child: CustomElevatedButton(
                  onPressed: () {
                    signUpNotifier.signUpButtonPressed();
                    print("Button pressed");
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(
                      onPressed: () {
                        signUpNotifier.clearInputs();
                        AutoRouter.of(context).replace(HomeRoute());
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              if (signUpState.isSubmitting) ...[
                const SizedBox(height: 8),
                const LinearProgressIndicator(value: null)
              ]
            ],
          ),
        ),
      ),
    );
  }
}

// class SignUpPage extends ConsumerStatefulWidget {
//   const SignUpPage({Key? key}) : super(key: key);

//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }

// class _SignUpPageState extends ConsumerState<SignUpPage> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   void _handleAuthResult(SignInState signUpState) {
//     signUpState.authFailureOrSuccessOption.fold(
//       () {},
//       (either) => either.fold(
//         (failure) {
//           FlushbarHelper.createError(
//             message: failure.map(
//               serverError: (_) => "Server Error",
//               invalidEmailOrPassword: (_) => "Invalid Email or Password",
//               emailAlreadyInUse: (_) => "Email Already In Use",
//               phoneNumberAlreadyInUse: (_) => "Phone Number Already In Use",
//               invalidOtp: (_) => "Invalid OTP",
//               unExpectedError: (_) => "UnExpected Error",
//             ),
//           ).show(context);
//         },
//         (r) {
//           print("***********SIGN UP SUCCESS *************");
//           print("***********SIGN UP SUCCESS *************");
//         },
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final signUpNotifier = ref.watch(signInProvider.notifier);
//     final signUpState = ref.watch(signInProvider);
//     _handleAuthResult(signUpState);
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           autovalidateMode: signUpState.showErrorMessages
//               ? AutovalidateMode.always
//               : AutovalidateMode.disabled,
//           child: ListView(
//             children: [
//               const SizedBox(height: 50),
//               Container(
//                 child: Image.asset("lib/assets/images/elmpier-logo.png"),
//               ),
//               const SizedBox(height: 50),
//               const Text(
//                 "Sign up",
//                 style: TextStyle(
//                     fontSize: 30,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 15),
//               CustomTextFormField(
//                 prefixIcon: const Icon(Icons.email),
//                 labelText: "Email Address",
//                 onChanged: ((value) => signUpNotifier.emailChanged(value)),
//                 validator: ((_) => signUpState.email.value.fold(
//                       (failure) => failure.maybeMap(
//                         invalidEmail: ((_) => "Invalid Email"),
//                         orElse: (() => null),
//                       ),
//                       (r) => null,
//                     )),
//                 obscureText: false,
//               ),
//               const SizedBox(height: 15),
//               CustomTextFormField(
//                 labelText: "Phone Number",
//                 prefixIcon: const Icon(Icons.phone),
//                 onChanged: ((value) =>
//                     signUpNotifier.phoneNumberChanged(value)),
//                 validator: ((value) => signUpState.phone.value.fold(
//                       (f) => f.maybeMap(
//                           invalidPhone: (value) => "Invalid Phone",
//                           orElse: (() => null)),
//                       (r) => null,
//                     )),
//                 obscureText: false,
//                 keyboardType: TextInputType.phone,
//               ),
//               const SizedBox(height: 15),
//               CustomTextFormField(
//                 prefixIcon: const Icon(Icons.lock),
//                 labelText: "Password",
//                 onChanged: ((value) => signUpNotifier.passwordChanged(value)),
//                 validator: ((_) => signUpState.password.value.fold(
//                       (failure) => failure.maybeMap(
//                         shortPassword: (_) => "Short Password",
//                         orElse: () => null,
//                       ),
//                       (r) => null,
//                     )),
//                 obscureText: true,
//               ),
//               const SizedBox(height: 15),
//               const Text(
//                 "By signing up, you're agree to our Terms & Conditions and Privacy Policy",
//                 style: TextStyle(
//                   color: Colors.grey,
//                 ),
//               ),
//               const SizedBox(height: 15),
//               SizedBox(
//                 height: 50,
//                 child: CustomElevatedButton(
//                   onPressed: () {
//                     signUpNotifier.signUpButtonPressed();
//                     print("Button pressed");
//                   },
//                   child: const Text(
//                     "Sign Up",
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 15),
//               Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text("Already have an account?"),
//                     TextButton(
//                       onPressed: () {
//                         signUpNotifier.clearInputs();
//                         AutoRouter.of(context).replace(HomeRoute());
//                       },
//                       child: const Text(
//                         "Sign In",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               if (signUpState.isSubmitting) ...[
//                 const SizedBox(height: 8),
//                 const LinearProgressIndicator(value: null)
//               ]
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     // Add any necessary cleanup logic here
//     super.dispose();
//   }
// }
