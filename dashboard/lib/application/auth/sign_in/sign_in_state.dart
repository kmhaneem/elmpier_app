import 'package:dashboard/domain/auth/auth_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.signInProcess() = _SignInProcess;
  const factory SignInState.signInSuccess() = _SignInSuccess;
  const factory SignInState.loadFailure(AuthFailure failure) = _LoadFailure;
}
