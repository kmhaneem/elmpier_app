import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/routes/app_router.gr.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Terms & Conditons'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              AutoRouter.of(context).push(TermsConditonsRoute());
            },
          ),
          ListTile(
            title: Text('About'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              AutoRouter.of(context).push(AboutUsRoute());
            },
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Version: 1.0")],
          )
        ],
      ),
    );
  }
}
