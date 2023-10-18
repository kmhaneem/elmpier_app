import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/presentation/home_page.dart';

import 'presentation/app_widget.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
      child: AppWidget(),
    ),
  );
}

