import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TermsConditonsPage extends ConsumerWidget {
  const TermsConditonsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms & Conditons"),
      ),
      body: Center(
        child: Text("T &C"),
      ),
    );
  }
}
