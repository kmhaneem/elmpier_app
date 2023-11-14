import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;
  const factory SignInState.signInProcess() = _SignInProcess;
  const factory SignInState.signInSuccess() = _SignInSuccess;
  const factory SignInState.signInFailure() = _SignInFailure;
}
