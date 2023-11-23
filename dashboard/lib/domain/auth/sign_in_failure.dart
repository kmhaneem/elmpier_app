
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_in_failure.freezed.dart';

@freezed
class SignInFailure with _$SignInFailure {
  const factory SignInFailure.serverError() = _ServerError;
  const factory SignInFailure.notFound() = _NotFound;
}
