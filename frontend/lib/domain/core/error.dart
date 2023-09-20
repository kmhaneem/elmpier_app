import 'package:frontend/domain/core/failures.dart';

class UnExpectedValueError extends Error {
  final ValueFailure valueFailure;
  UnExpectedValueError(this.valueFailure);

  String toString() {
    const explaination =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explaination Failure was: $valueFailure');
  }
}
