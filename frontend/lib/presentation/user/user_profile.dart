import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';
import 'package:frontend/presentation/widget/custom_elevated_button.dart';
import 'package:frontend/presentation/widget/custom_textform_field.dart';

import '../../shared/providers.dart';

class UserProfilePage extends ConsumerStatefulWidget {
  const UserProfilePage({super.key});

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends ConsumerState<UserProfilePage> {
  @override
  void initState() {
    super.initState();
    ref.refresh(userProvider);
  }

  @override
  Widget build(BuildContext context) {
    final userState = ref.watch(userProvider);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Profile'),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView(
          children: [
            userState.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              actionInProgress: () =>
                  const Center(child: LinearProgressIndicator()),
              loaded: ((user) {
                final userName = user.firstName;
                print("USER NAME IS ######## $userName");
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      CustomTextFormField(
                        controller: TextEditingController(
                            text: "${user.firstName} ${user.lastName}"),
                        enabled: false,
                        textColor: Colors.grey,
                        obscureText: false,
                        labelText: "Name",
                      ),
                      const SizedBox(height: 20),
                      CustomTextFormField(
                        controller: TextEditingController(text: user.email),
                        enabled: false,
                        textColor: Colors.grey,
                        labelText: "Email",
                        obscureText: false,
                      ),
                      const SizedBox(height: 20),
                      CustomTextFormField(
                        controller: TextEditingController(text: user.phone),
                        enabled: false,
                        textColor: Colors.grey,
                        obscureText: false,
                        labelText: "Phone",
                      ),
                      const SizedBox(height: 20),
                      CustomTextFormField(
                        controller: TextEditingController(
                          text:
                              "${user.addressLine1},\n${user.addressLine2},\n${user.city}, ${user.postalCode},\n${user.district},\n${user.province} Province",
                        ),
                        enabled: false,
                        textColor: Colors.grey,
                        maxLines: 6,
                        labelText: "Address",
                        obscureText: false,
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity, // Take full width
                        child: CustomElevatedButton(
                          onPressed: () {
                            AutoRouter.of(context).replace(UserProfileAddRoute(
                                previousPage: "UserProfilePage"));
                          },
                          text: "Update Address",
                        ),
                      ),
                    ],
                  ),
                );
              }),
              actionFailure: (f) => Center(
                child: Text(f.maybeMap(
                  serverError: (_) => "Server Error",
                  notFound: (_) => "User Not Found",
                  orElse: () => "An error occurred.",
                )),
              ),
            ),
          ],
        ));
  }
}
