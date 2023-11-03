// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../shared/providers.dart';
// import 'routes/app_router.gr.dart';

// class ProfilePage extends ConsumerWidget {
//   const ProfilePage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final signInNotifier = ref.watch(signInProvider.notifier);

//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(height: 100), // Adjust as per your needs
//           ListTile(
//             leading: Icon(Icons.account_box), // Icon for Settings
//             title: Text('User Info'),
//             trailing: Icon(Icons.arrow_forward_ios),
//             onTap: () {
//               AutoRouter.of(context).push(const UserProfileRoute());
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.logout),
//             title: Text('Logout'),
//             trailing: Icon(Icons.arrow_forward_ios),
//             onTap: () {
//               signInNotifier.signOut();
//               AutoRouter.of(context).replace(SignInRoute());
//             },
//           ),
//         ],
//       ),
//       // bottomNavigationBar: BottomNavigationBar(
//       //   // ... your bottom navigation bar items here
//       // ),
//     );
//   }
// }

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
    // Show a modal with a CircularProgressIndicator for 1 second
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
    AutoRouter.of(context).replace(const SignInRoute());
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInNotifier = ref.watch(signInProvider.notifier);

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100), 
          ListTile(
            leading: Icon(Icons.account_box), 
            title: Text('User Info'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              AutoRouter.of(context).push(const UserProfileRoute());
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              _logout(context, signInNotifier);
            },
          ),
        ],
      ),
    );
  }
}
