import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';

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
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: userState.when(
        initial: () => const Center(child: CircularProgressIndicator()),
        actionInProgress: () => const Center(child: LinearProgressIndicator()),
        loaded: ((user) {
          final userName = user.firstName;
          print("USER NAME IS ######## $userName");
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name
                const Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: TextEditingController(
                      text: "${user.firstName} ${user.lastName}"),
                  enabled: false,
                  style: const TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Email
                const Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: TextEditingController(text: user.email),
                  enabled: false,
                  style: const TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Phone
                const Text(
                  'Phone',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: TextEditingController(text: user.phone),
                  enabled: false,
                  style: const TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Address
                const Text(
                  'Address',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: TextEditingController(
                      text:
                          "${user.addressLine1},\n${user.addressLine2},\n${user.city}, ${user.postalCode},\n${user.district},\n${"${user.province} Province"}"),
                  enabled: false,
                  style: const TextStyle(color: Colors.grey),
                  maxLines: 6,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Update Address Button
                ElevatedButton(
                  onPressed: () {

                    AutoRouter.of(context).replace(
                        UserProfileAddRoute(previousPage: "UserProfilePage"));
                  },
                  child: const Text(
                    'Update Address',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16), // Making the text color white
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context)
                        .primaryColor, // Set the background color
                    onPrimary: Colors.white, // Set the color of the text
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    minimumSize: const Size(double.infinity,
                        50), // Makes the button width touch both ends
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
    );
  }
}
