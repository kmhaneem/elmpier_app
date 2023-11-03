import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/shared/providers.dart';

int? getLoggedInUserId(WidgetRef ref) {
  final userIdAsyncValue = ref.watch(userIdProvider);
  final userIdString = userIdAsyncValue.maybeWhen(
    data: (id) => id,
    orElse: () => null,
  );
  if (userIdString != null) {
    return int.tryParse(userIdString);
  }
  return null;
}
