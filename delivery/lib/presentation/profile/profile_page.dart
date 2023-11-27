import 'package:auto_route/auto_route.dart';
import 'package:delivery/domain/profile/user_profile.dart';
import 'package:delivery/presentation/routes/app_router.gr.dart';
import 'package:delivery/presentation/widget/custom_elevated_button.dart';
import 'package:delivery/presentation/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:delivery/shared/provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  Future<void> _logout(BuildContext context, WidgetRef ref) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const AlertDialog(
          content: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(width: 15),
              Text("Logging out..."),
            ],
          ),
        );
      },
    );

    await Future.delayed(const Duration(seconds: 1));

    Navigator.of(context).pop();

    ref.read(signInProvider.notifier).signOut();

    AutoRouter.of(context).replace(const SignInRoute());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userProfileState = ref.watch(userProfileProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            userProfileState.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              actionInProgress: () =>
                  const Center(child: LinearProgressIndicator()),
              success: (profile) => _buildProfileForm(profile),
              actionFailure: (error) => Center(child: Text(error.toString())),
            ),
            ElevatedButton(
                onPressed: () async {
                  await _logout(context, ref);
                  ref.refresh(authProvider);
                },
                child: Text("Logout")),
          ],
        ));
  }

  Widget _buildProfileForm(UserProfile profile) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextFormField(
            controller: TextEditingController(text: profile.name),
            enabled: false,
            labelText: "Name",
            obscureText: false,
          ),
          SizedBox(height: 20),
          CustomTextFormField(
              controller: TextEditingController(text: profile.email),
              enabled: false,
              labelText: "Email",
              obscureText: false),
          SizedBox(height: 20),
          CustomTextFormField(
              controller: TextEditingController(
                text: profile.province + " Province",
              ),
              enabled: false,
              labelText: "Province",
              obscureText: false),
          SizedBox(height: 20),
          CustomTextFormField(
              controller: TextEditingController(text: profile.district),
              enabled: false,
              labelText: "District",
              obscureText: false),
        ],
      ),
    );
  }
}
