import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../application/auth/sign_in/sign_in_notifer.dart';
import '../shared/providers.dart';
import 'routes/app_router.gr.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  Future<void> _logout(
      BuildContext context, SignInNotifier signInNotifier) async {
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

    await Future.delayed(Duration(seconds: 1));

    Navigator.pop(context);

    signInNotifier.signOut();
    AutoRouter.of(context).replace(const SignInRoute());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInNotifier = ref.watch(signInProvider.notifier);
    final userProfileState = ref.watch(userProfileXProvider);

    var _name;
    var _email;

    userProfileState.maybeWhen(
      loaded: (user) {
        _email = user.email;
        if (user.firstName!.isEmpty && user.lastName!.isEmpty) {
          _name = _email.split('@').first;
        } else {
          _name = user.firstName! + " " + user.lastName!;
        }
      },
      orElse: () => {},
    );

    final String userName = _name ?? 'Unknown';
    final String userEmail = _email ?? 'No email';

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 50,
            backgroundImage:
                AssetImage("lib/assets/images/userpro.png"), // Corrected
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(height: 10),
          Text(
            userName,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            userEmail,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.account_box),
            title: const Text('User Info'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              AutoRouter.of(context).push(const UserProfileRoute());
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              AutoRouter.of(context).push(const SettingsRoute());
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () async {
              await _logout(context, signInNotifier);
              ref.refresh(authProvider);
            },
          ),
        ],
      ),
    );
  }
}
