import 'package:dashboard/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
      child: AppWidget(),
    ),
  );
}