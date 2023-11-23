import 'package:auto_route/auto_route.dart';
import 'package:dashboard/application/auth/sign_in/sign_in_notifier.dart';
import 'package:dashboard/presentation/routes/auto_router.gr.dart';
import 'package:dashboard/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdminPage extends ConsumerWidget {
  const AdminPage({super.key});

  Future<void> _logout(
      BuildContext context, SignInNotifier signInNotifier) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
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
    AutoRouter.of(context).replace(SignInRoute());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInNotifier = ref.watch(signInProvider.notifier);

    var _name;
    var _email;

    final String userName = _name ?? 'Admin';
    final String userEmail = _email ?? 'admin@elmpier.lk';

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
                AssetImage("lib/assets/admin-profile.png"), // Corrected
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
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              _logout(context, signInNotifier);
            },
          ),
        ],
      ),
    );
  }
}
